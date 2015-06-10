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
		@users = User.paginate(:page => params[:page], :per_page => 30)
	end

	def report
		@q = Project.ransack(params[:q])
		@projects = @q.result
	end

	def analytics
		@q = Project.ransack(params[:q])
		@projects = @q.result
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
