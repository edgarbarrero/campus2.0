class UserMailer < ApplicationMailer
  default from: 'tutoria@rcdasociacion.es'

  def new_user_registration(user)
    @user = user
    mail(to: 'pablogonzalez@rcdasociacion.es', cc: 'edgar.barrero.mateo@gmail.com', subject: 'Un nuevo alumno ha hecho el pago')
  end
end
