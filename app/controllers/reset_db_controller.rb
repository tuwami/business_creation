class ResetDbController < ApplicationController

	def reset
		Investment.destroy_all
		Admin.destroy_all
		User.destroy_all
		UserTeam.destroy_all
		Team.destroy_all
		Market.destroy_all
		MarketMaster.destroy_all
		History.destroy_all

		`./reset_db_from_web.sh`
		redirect_to teams_path
	end
end
