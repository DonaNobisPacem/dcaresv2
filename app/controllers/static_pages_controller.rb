class StaticPagesController < ApplicationController
	def home
		@q = Project.ransack(params[:q])
		@projects = @q.result.paginate(:page => params[:page], :per_page => 10)
	end

	def admin_panel
		@users = User.paginate(:page => params[:page], :per_page => 30)
	end

	def report
		@q = Project.ransack(params[:q])
		@projects = @q.result.paginate(:page => params[:page], :per_page => 100)
	end

	def filter
		report
		render :report
	end

	def search
		home
		render :home
	end
end
