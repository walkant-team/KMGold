class Suscription < ActiveRecord::Base
	EMAIL_OWNER = "videmor@gmail.com"
	after_create :send_mail

	validates :fullname, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :comment, presence: true

	def send_mail
		SuscriptionMailer.notification_email(self).deliver
	end
end
