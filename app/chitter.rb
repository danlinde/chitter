require 'sinatra/base'
require 'data_mapper'
require 'dm-timestamps'
require 'dm-postgres-adapter'
require 'rack-flash'
require_relative 'helpers/application'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require_relative 'models/peep'
require_relative 'models/user'

DataMapper.finalize
DataMapper.auto_upgrade!

class Chitter < Sinatra::Base
	enable :sessions
	set :session_secret, 'super secret'
	helpers SessionHelpers
	use Rack::Flash
	use Rack::MethodOverride


	get '/' do
    	@peeps = Peep.all
    	erb :index
	end

	post '/peeps' do
  		message = params["message"]
  		user = current_user
  		Peep.create(:message => message, :user =>user)
  		redirect to('/')
	end

	get '/users/new' do
		@user = User.new
  		erb :"users/new"
	end

	post '/users' do
  		@user = User.create(:name => params[:name],
  					:username => params[:username],
  					:email => params[:email], 
              		:password => params[:password])
  		if @user.save
  			session[:user_id] = @user.id
  			redirect to('/')
  		else
  			flash.now[:errors] = @user.errors.full_messages
    		erb :"users/new"
    	end
	end

	get '/sessions/new' do
  		erb :"sessions/new"
	end

	post '/sessions' do
  		email, password = params[:email], params[:password]
  		user = User.authenticate(email, password)
    	if user
    		session[:user_id] = user.id
    		redirect to('/')
    	else
    		flash[:errors] = ["The email or password are incorrect"]
    		erb :"sessions/new"
  		end
	end

	delete '/sessions' do
  		flash[:notice] = "Good bye!"
  		session[:user_id] = nil
  		redirect to('/')
	end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
