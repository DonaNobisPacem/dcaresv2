namespace :notifications do
  desc "Send weekly updates"
  task :send_email => :environment do  	
    User.find_each do |user|
      if user.admin
        UserMailer.admin_notification(user).deliver_later
      else
        UserMailer.weekly_notification(user).deliver_later
      end
    end
  end
end