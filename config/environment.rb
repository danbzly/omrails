# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Omrails::Application.initialize!


config.action_mailer.default_url_options = { :host => 'smtp.sendgrid.net' }
ActionMailer::Base.smtp_settings = {
  :address        => "smtp.sendgrid.net",
  :port           => "25",
  :authentication => :login,
  :user_name      => ENV['app13048826@heroku.com'],
  :password       => ENV['cutpgevm'],
  :domain         => ENV['heroku.com']
}
