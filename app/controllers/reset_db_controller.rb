class ResetDbController < ApplicationController

	def reset
		`./reset_db_from_web.sh`
		redirect_to teams_path
	end
end
