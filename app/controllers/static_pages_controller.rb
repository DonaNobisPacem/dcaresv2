class StaticPagesController < ApplicationController
	def home
	end

	def admin_panel
		@users = User.all
	end
end
