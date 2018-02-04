ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'rcdasociacion.es',
  user_name:            'tutoria@rcdasociacion.es',
  password:             Rails.application.secrets.email_password,
  authentication:       :plain,
  enable_starttls_auto: true
}
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
