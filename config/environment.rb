# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Omrails::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "localhost:3000",
  :port => 25,
  :domain => "http://limitless-coast-4809.herokuapp.com",
  :authentication => :login,
  :user_name => "danbzly@gmail.com",
  :password => "okokok99"
}
