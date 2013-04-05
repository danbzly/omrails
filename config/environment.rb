# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Omrails::Application.initialize!

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'http://limitless-coast-4809.herokuapp.com',
  :user_name            => 'danbzly@gmail.com',
  :password             => 'okokok99',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }