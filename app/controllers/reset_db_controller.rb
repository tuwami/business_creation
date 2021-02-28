class ResetDbController < ApplicationController

	def reset
		ApplicationRecord.delete_all
		Investment.delete_all
		Admin.delete_all
		User.delete_all
		UserTeam.delete_all
		Team.delete_all
		Market.delete_all
		MarketMaster.delete_all
		History.delete_all

		`./reset_db_from_web.sh`
		redirect_to teams_path
	end
end
