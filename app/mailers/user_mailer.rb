class UserMailer < ApplicationMailer
  default from: 'tutoria@rcdasociacion.es'

  def new_user_registration(user)
    @user = user
    mail(to: 'pablogonzalez@rcdasociacion.es', cc: ['edgar.barrero.mateo@gmail.com', 'reciclaje@rcdasociacion.es'], subject: 'Un nuevo alumno ha hecho el pago')
  end

  def user_complete_course(user)
    @user = user
    mail(to: 'pablogonzalez@rcdasociacion.es', cc: ['edgar.barrero.mateo@gmail.com', 'reciclaje@rcdasociacion.es'], subject: 'Un alumno ha completado el curso')
  end
end
