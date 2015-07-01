class UserMailer < ApplicationMailer
	default from: 'info.ovpd@up.edu.ph'
	
	def hello_world
		mail(to: 'johnthomasraphael@yahoo.com', subject: 'I emailed from AmazonSES!')
	end

	def weekly_notification(user)
		@user = user
		@url = "http://52.74.232.161/"
		@projects = Project.where( :university_id => @user.universities.first.id ).where( :status => 2..3 ).where( "updated_at < ?", 7.days.ago )
		mail(to: @user.email , subject: 'Weekly notification from OVPDCARES')
	end

	def admin_notification(user)
		@user = user
		@url = "http://52.74.232.161/"
		mail(to: @user.email, subject: 'Weekly notifications have been sent out.')
	end
end
