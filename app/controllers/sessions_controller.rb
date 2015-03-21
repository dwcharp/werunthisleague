class SessionsController < ApplicationController
  before_filter :redirect_if_logged_in, only: [:new, :create]
  
	def new
	end

	def create
    coach = Coach.find_by(email_address: params[:email_address])

    if coach.password == params[:password]
      set_session_user_id(coach.id, false)
      redirect_to team_management_path
    else
      render :new
    end
	end

	def destroy
    session.clear
    redirect_to root_path
	end
end
