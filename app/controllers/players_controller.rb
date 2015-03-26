class PlayersController < ApplicationController
  
  def new
    @team = Team.find(params[:team_id])
    @player = Player.new    
  end

  def create
    @player = Player.new(player_params)
    @team = Team.find(params[:team_id])
    @team.players << @player
    redirect_to roster_management_team_path(@team)
  end

  def edit
    @player = Player.find(params[:id])  
  end

  def update
    binding.pry
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to root_path
  end

  def signup
    @player = Player.new
  end

  def signup_confirm
    @player = Player.new(player_params)
    @player.team_id = -1
    @player.save
    SesMailer.signup_player_confirmation(@player).deliver
    redirect_to root_path
  end


  def index
  end

  def show
  end

  private
  def player_params
    params.require(:player).permit(:last_name, :first_name, :home_town, :position, :email_address, :age, 
      :height, :weight, :phone_number, :position, :throw, :bat, :college, :high_school, :home_town, :photo, :number)
  end
end
