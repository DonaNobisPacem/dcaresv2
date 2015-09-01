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
		respond_to do |format|
	      format.html
	      format.xlsx {
	        render xlsx: "report", filename: "reports.xlsx"
	      }
	    end
	end

	def analytics
		@q = Project.ransack(params[:q])
		@output = @q.result
		@projects = @output.paginate(:page => params[:page], :per_page => 10)

		@group_by_cu = @output.group_by { |x| x[:university_id] }
		@group_by_status = @output.group_by { |x| x[:status] }
		@group_by_pc = @output.group_by { |x| x[:classification] }
		@budget_distribution_per_cu = @output.group(:university_id).order('university_id asc').sum(:financial_budget)

		@status_vs_src_vs_classification = []
		ProjectStatus.find_each do |status|
			@status_vs_src_vs_classification << {:name => status.description, :data => @output.where( status: status.id ).joins(:fund_sources).group("fund_sources.fund_source_classification").order('fund_sources.fund_source_classification asc').sum(:financial_budget)}
		end
		@status_vs_src_vs_classification_count = []
		ProjectStatus.find_each do |status|
			total_count = Project.joins(:fund_sources).group("fund_sources.fund_source_classification").order('fund_sources.fund_source_classification asc').count
			classification_count = @output.where( status: status.id ).joins(:fund_sources).group("fund_sources.fund_source_classification").order('fund_sources.fund_source_classification asc').count
			@status_vs_src_vs_classification_count << {:name => status.description, :data => classification_count.map {|k,v| [ k, (100*v/total_count[k].to_f).round(2) ]} }
		end
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
		@q = Project.ransack(params[:q])
		@projects = @q.result
		render :report
	end

	def search
		result
		render :result
	end
end
