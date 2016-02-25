class UserMailer < ApplicationMailer
	default from: "do-not-reply@example.com"

	def from_contact(contact)
		@contact = contact

		mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Mail from Learning Rails Website")
	end
end
