namespace :notifications do
  desc "Send weekly updates"
  task :send_email => :environment do  	
    User.find_each do |user|
      if user.admin
        UserMailer.admin_notification(user).deliver_later
      else
        if user.universities.present?
          UserMailer.weekly_notification(user).deliver_later
        end
      end
    end
  end

  desc "Test sending email in production"
  task :test_send_email => :environment do
    UserMailer.hello_world.deliver_later 
  end
end