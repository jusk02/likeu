class ContactMailer < ApplicationMailer
	
	def contact(contact)
		@contact = contact
		mail(to: @contact.email, subject: "")
		
	end

default :to => "info@likeu.co"

	def message_me(contact)
		@contact = contact

    mail from: @contact.email, subject: @contact.subject, body: @contact.content
 	end
end
