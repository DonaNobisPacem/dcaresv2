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

	desc "Change University Code and update respective project codes"
	task :change_code => :environment do
		@univ_lb = University.find(4)
		@univ_min = University.find(6)
		@univ_pgh = University.find(8)

		@univ_lb.university_code = "UPLB"
		@univ_min.university_code = "UPMin"
		@univ_pgh.university_code = "UPPGH"

		@univ_lb.save!
		@univ_min.save!
		@univ_pgh.save!

		@univ_lb_projects = Project.where(:university_id => "4")
		@univ_min_projects = Project.where(:university_id => "6")
		@univ_pgh_projects = Project.where(:university_id => "8")


		@univ_lb_projects.each_with_index do |project, index|
			project.project_code = "I" + @univ_lb.university_code + "2015-" + (index+1).to_s.rjust(3,'0')
			project.save!
		end

		@univ_min_projects.each_with_index do |project, index|
			project.project_code = "I" + @univ_min.university_code + "2015-" + (index+1).to_s.rjust(3,'0')
			project.save!
		end

		@univ_pgh_projects.each_with_index do |project, index|
			project.project_code = "I" + @univ_pgh.university_code + "2015-" + (index+1).to_s.rjust(3,'0')
			project.save!
		end
	end

	desc "Change University Code and update respective project codes"
	task :change_code_ou => :environment do
		@univ_ou = University.find(7)
		@univ_ou.university_code = "UPOU"
		@univ_ou.save!
		@univ_ou_projects = Project.where(:university_id => "7")
		@univ_ou_projects.each_with_index do |project, index|
			project.project_code = "I" + @univ_ou.university_code + "2015-" + (index+1).to_s.rjust(3,'0')
			project.save!
		end
	end
end