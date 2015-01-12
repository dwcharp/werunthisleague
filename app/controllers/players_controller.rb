class PlayersController < ApplicationController
  def new
  	@team = Team.find(params[:team_id])
  	@player = Player.new
  end

  def create
  end

  def signup
    @player = Player.new
  end

  def index
  end

  def show
  end

  private
  def player_params(params)
    params.require(:player).permit(:last_name, :first_name, :home_town, :position)
  end
end
