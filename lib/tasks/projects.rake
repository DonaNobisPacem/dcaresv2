namespace :projects do
	desc "Add status"
	task :add_status => :environment do
		Project.find_each do |project|
			if project.percent_accomplishment == 100
				project.status = 1
			else
				project.status = 2
			end
			project.save!
		end
	end
end