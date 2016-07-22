# Send password reset notification
# path: app/mailers/user_mailer.rb
# Send password reset notification
# path: app/mailers/user_mailer.rb


class UserMailer < ActionMailer::Base
  default :from => "no-reply@likeu.com"

  def password_reset(user, token)
    @resource = user
    @token = token
    mail(:to => user.email,
         :subject => 'Notificacion de actualizacion de datos')
  end
end