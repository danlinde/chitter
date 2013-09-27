class Peep
	include DataMapper::Resource

	has 1, :user, :through => Resource

	property :id, 			Serial
	property :message,		Text
	property :created_at, 	DateTime

end