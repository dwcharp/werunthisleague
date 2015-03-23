class GamesController < ApplicationController
  
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
  end

  def index
    @games = Game.all
  end

  def team_games
    @team = Team.find(current_user.team_id)
    @games = @team.games
  end

  def show
  end

  private

  def game_params
    params.require(:game).permit()
  end

end
