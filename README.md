********************
      CHITTER
********************

###Makers Academy Week 6 Test


###Aim

The aim of this test was to write a Twitter clone that will allow the users to post messages to a public stream. 

###Other details

The task was set by Enrique Comba Riepenhausen, [@ecomba](http://www.github.com/ecomba)

The app was written in Ruby using the *Sinatra* framework and *Cucumber* and *RSpec* for TDD.

User management features were implemented manually instead of using a gem such as *Devise*. However, *Bcrypt* was used to ensure password security.

I used *PostgreSQL* with *Datamapper* for my database.

###Features

* Users can sign up, sign in, and sign out
* Users can post messages (peeps) to a public feed which is displayed on the homepage
* Any visitor can view this public feed
* Only registed users can post peeps
* Peeps have a timestamp and are placed in chronological order, with the lastest peep at the top of the page

###To do

* Enable users to reply to individual peeps
* Websockets to enable real time posting of peeps and chat functionality
* Styling
