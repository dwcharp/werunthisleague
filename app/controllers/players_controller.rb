class PlayersController < ApplicationController
  def new
  	@team = Team.find(params[:team_id])
  	@player = Player.new
  end

  def create
    @player = Player.new(player_params)
    SesMailer.sign_up_confirmation(@player).deliver
    redirect_to root_path
  end

  def signup
    @player = Player.new
    @player.team_id = -1
  end

  def index
  end

  def show
  end

  private
  def player_params
    params.require(:player).permit(:last_name, :first_name, :home_town, :position, :email_address)
  end
end
