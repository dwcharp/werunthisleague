class SesMailer < ActionMailer::Base
  default from: 'werunthisleague@gmail.com'
  def sign_up_confirmation(player)
  	@player = player
    mail(to: @player.email_address, subject: 'Midway baseball league')
  end
end