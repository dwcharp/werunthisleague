class SesMailer < ActionMailer::Base
  default from: 'werunthisleague@gmail.com'
  def signup_player_confirmation(player)
  	@player = player
    mail(to: @player.email_address, subject: 'Midway baseball league')
  end

  def signup_team_confirmation(team)
    @team = team
    mail(to: @team.email_address, subject: 'Midway baseball league')
  end
end