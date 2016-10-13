class UserMailer < ApplicationMailer
	default from: 'info.ovpd@up.edu.ph'
	
	def hello_world
		mail(to: 'johnthomasraphael@yahoo.com', subject: 'I emailed from AmazonSES!')
	end

	def weekly_notification(user)
		if user.universities.present?
			@user = user
			@url = "http://dcares.up-ovpd.ph/"
			@projects = Project.where( :university_id => @user.universities.first.id ).where( :status => 2 ).where( "updated_at < ?", 7.days.ago )
			@completed_but_incomplete_projects = Project.where( :university_id => @user.universities.first.id ).where( :status => 1 ).where("description = '' or description is null or expected_outcome = '' or expected_outcome is null or end_user = '' or end_user is null or bidding_contractor = '' or bidding_contractor is null or bidding_number is null or bidding_preprocurement is null or bidding_prebidding is null or bidding_bidding is null or bidding_postquali is null or bidding_award is null or bidding_purchase is null or bidding_proceed is null or financial_budget is null or financial_contract_price is null or financial_actual_cost is null or timeline_actual_start is null or timeline_actual_end is null or timeline_target_start is null or timeline_target_end is null or timeline_extension is null or completed_by is null")
			mail(to: @user.email , subject: 'Weekly notification from OVPDCARES')
		end
	end

	def weekly_notification_special(user)
		@user = user
		@url = "http://dcares.up-ovpd.ph/"
		@projects = Project.where( :status => 2 ).where( "updated_at < ?", 7.days.ago )
		@completed_but_incomplete_projects = Project.where( :status => 1 ).where("description = '' or description is null or expected_outcome = '' or expected_outcome is null or end_user = '' or end_user is null or bidding_contractor = '' or bidding_contractor is null or bidding_number is null or bidding_preprocurement is null or bidding_prebidding is null or bidding_bidding is null or bidding_postquali is null or bidding_award is null or bidding_purchase is null or bidding_proceed is null or financial_budget is null or financial_contract_price is null or financial_actual_cost is null or timeline_actual_start is null or timeline_actual_end is null or timeline_target_start is null or timeline_target_end is null or timeline_extension is null or completed_by is null")
		mail(to: @user.email , subject: 'Weekly notification from OVPDCARES')		
	end

	def admin_notification(user)
		@user = user
		@url = "http://dcares.up-ovpd.ph/"
		mail(to: @user.email, subject: 'Weekly notifications have been sent out.')
	end
end


