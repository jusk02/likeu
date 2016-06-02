class MessageMailer < ApplicationMailer

  # use your own email address here
  default :to => "info@likeu.co"
  
  def message_me(msg)
  	@msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end

end
