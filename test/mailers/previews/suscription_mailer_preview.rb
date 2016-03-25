# Preview all emails at http://localhost:3000/rails/mailers/suscription_mailer
class SuscriptionMailerPreview < ActionMailer::Preview

  def notification_email_preview
		SuscriptionMailer.notification_email(Suscription.first).deliver
  end
end
