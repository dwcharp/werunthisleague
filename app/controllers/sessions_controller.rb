class SessionsController < ApplicationController
	def new
	end

	def create
    binding.pry
    coach = Coach.find_by(email_address: params[:email_address])

    if coach.password == params[:password]
      redirect_to roster_management_team_path(coach.team_id)
    else
      render :new
    end
	end

	def destroy
	end
end
