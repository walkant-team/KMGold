class SuscriptionMailer < ApplicationMailer  
 
  def notification_email(suscriptor)
    @user = suscriptor
    @url  = 'http://example.com/login'
    mail(from: suscriptor.email, to: Suscription::EMAIL_OWNER, subject: 'consulta de la web')
  end
end
