class StaticPagesController < ApplicationController
	def home
	end

	def admin_panel
		@users = User.paginate(:page => params[:page], :per_page => 30)
	end
end
