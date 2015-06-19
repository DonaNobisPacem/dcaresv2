class StaticPagesController < ApplicationController
	def home
		@q = Project.ransack(params[:q])
		@projects = @q.result.paginate(:page => params[:page], :per_page => 10)
	end

	def result
		@q = Project.ransack(params[:q])
		@projects = @q.result.paginate(:page => params[:page], :per_page => 10)
	end

	def admin_panel
		@q = User.ransack(params[:q])
		@users = @q.result.paginate(:page => params[:page], :per_page => 15)
	end

	def report
		@q = Project.ransack(params[:q])
		@projects = @q.result
	end

	def analytics
		@q = Project.ransack(params[:q])
		@output = @q.result
		@projects = @output.paginate(:page => params[:page], :per_page => 10)
	end

	def search_users
		admin_panel
		render :admin_panel
	end

	def search_analytics
		analytics
		render :analytics
	end

	def search_report
		report
		render :report
	end

	def search
		result
		render :result
	end
end
