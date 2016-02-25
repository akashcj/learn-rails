class ContactsController < ApplicationController

=begin
	def process_form
		Rails.logger.debug "DEBUG: params are #{params}"
		flash[:notice] = "Recieved  request from #{params[:contact][:name]} who can be reached at #{params[:contact][:email]}"
		redirect_to root_path
	end
=end
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new (secure_params)
		if @contact.valid?
			UserMailer.from_contact(@contact).deliver_now
			flash[:notice] = "Message has come from #{@contact.name}"
=begin
			redirect_to root_path
=end
		else
			render :new
		end
	end

	private def secure_params
		params.require(:contact).permit(:name, :email, :content)
	end
end
