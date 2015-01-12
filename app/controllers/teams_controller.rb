class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
  	@team = Team.new(team_params)
    if @team.save
      redirect_to(@team)
    else
      render :new
    end
  end

  def index
    @teams = Team.all
  end

  def show
  	@team = Team.find(params[:id])
  end

  def add_new_player
    @team = Team.find(1)
    @team.players.create(player_params)
    if @team.save
      redirect_to(@team)
    else
    end
  end

  private
    def team_params
      params.require(:team).permit(:name, :city, :description)
    end

    def player_params
      params.require(:player).permit(:last_name, :first_name, :home_town, :position)
    end
end
