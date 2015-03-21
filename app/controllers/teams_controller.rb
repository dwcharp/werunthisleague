class TeamsController < ApplicationController
  
  before_action :redirect_if_not_logged_in, only: [:new, :create, :edit, :update, :team_management,
    :add_new_player, :edit_player, :update_player]

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

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to(@team)
    end
  end

  def index
    @teams = Team.all
  end

  def show
  	@team = Team.find(params[:id])
    @players = @team.players
  end

  def team_management
    @team = Team.find(current_user.team_id)
    @players = @team.players
  end

  def games
    @team = Team.find(current_user.team_id)
    @games = @team.games
  end

  def add_new_player
    @team = Team.find(params[:id])
    @team.players << Player.new(player_params)
    redirect_to(@team)
  end

  def edit_player
    @team = Team.find(params[:id])
    @player = @team.players.find(params[:player_id])
  end

  def update_player
    @team = Team.find(params[:id])
    @player = @team.players.find(params[:player_id])
    @player.update(player_params)
    redirect_to(@team)
  end

  def signup
    @team = Team.new
  end

  def signup_confirm
    @team = Team.new(team_params)
    if @team.save
      SesMailer.signup_team_confirmation(@team).deliver
      redirect_to root_path
    end
  end

  private
    def team_params
      params.require(:team).permit(:name, :city, :description, :head_coach, :team_logo, :email_address)
    end

    def player_params
      params.require(:player).permit(:last_name, :first_name, :home_town, :position,:number, :photo)
    end
end
