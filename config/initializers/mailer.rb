ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'rcdasociacion@gmail.com',
  password:             Rails.application.secrets.email_password,
  authentication:       :plain,
  enable_starttls_auto: true
}
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
