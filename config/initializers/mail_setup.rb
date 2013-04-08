ActionMailer::Base.smtp_settings = {
:address => ‘smtp.sendgrid.net’,
:port => ’587′,
:authentication => :plain,
:user_name => ENV['app13048826@heroku.com'],
:password => ENV['cutpgevm'],
:domain => ‘heroku.com’
}
ActionMailer::Base.delivery_method = :smtp