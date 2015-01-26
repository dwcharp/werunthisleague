class LeagueController < ApplicationController
	def index
		@teams = Team.all
	end
end
