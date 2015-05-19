# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

params =  
{ :user =>
    {
	    :email => 'johnthomasraphael@gmail.com',
	    :password => 'pass1234',
	    :password_confirmation => 'pass1234',
	    :admin => true,
	    :approved => true,
  	}
}
User.create!(params[:user])

University.create!([
		{:university_name => "UP System"},
		{:university_name => "UP Diliman"},
		{:university_name => "UP Manila"},
		{:university_name => "UP Los Banos"},
		{:university_name => "UP Baguio"},
		{:university_name => "UP Visayas"},
		{:university_name => "UP Cebu"},
		{:university_name => "UP Mindanao"},
		{:university_name => "UP Open University"},
		{:university_name => "UP PGH"},
	])

ProjectStatus.create!([
		{:description => "Completed"},
		{:description => "Ongoing"},
		{:description => "Delayed"},
		{:description => "Terminated"},
	])

FundSource.create!([
		{:source_name => "2012 Academic Program Improvement"},
		{:source_name => "2012 CHED Funding"},
		{:source_name => "2012 PAEP's Initiatives"},
		{:source_name => "2013 Academic Program Improvement"},
		{:source_name => "2013 CO Budget"},
		{:source_name => "2013 PAEP's Initiatives"},
		{:source_name => "2014 Academic Program Improvement"},
		{:source_name => "2014 CO Budget"},
		{:source_name => "2014 CO Budget (CIDP)"},
		{:source_name => "2014 PAEP's Initiatives"},
		{:source_name => "2015 Academic Program Improvement"},
		{:source_name => "2015 CO Budget"},
		{:source_name => "2015 CO Budget (NEP)"},
		{:source_name => "2015 CO Budget (NEP-EO)"},
		{:source_name => "2015 PAEP's Initiatives"},
		{:source_name => "DA Funding"},
		{:source_name => "DPWH Funding"},
		{:source_name => "Special Allotment Release Order (SARO)"},
		{:source_name => "UP Baguio Endowment Fund"},
		{:source_name => "UP Baguio General Fund"},
		{:source_name => "UP Baguio Revolving Fund"},
		{:source_name => "UP Baguio Tuition Fee Increase"},
		{:source_name => "UP Cebu Endowment Fund"},
		{:source_name => "UP Cebu General Fund"},
		{:source_name => "UP Cebu Revolving Fund"},
		{:source_name => "UP Cebu Tuition Fee Increase"},
		{:source_name => "UP Diliman 60% Share of S&T Parks"},
		{:source_name => "UP Diliman Endowment Fund"},
		{:source_name => "UP Diliman General Fund"},
		{:source_name => "UP Diliman Revolving Fund"},
		{:source_name => "UP Diliman Tuition Fee Incresase"},
		{:source_name => "UP Los Baños Endowment Fund"},
		{:source_name => "UP Los Baños General Fund"},
		{:source_name => "UP Los Baños Revolving Fund"},
		{:source_name => "UP Los Baños Tuition Fee Increase"},
		{:source_name => "UP Manila Endowment Fund"},
		{:source_name => "UP Manila General Fund"},
		{:source_name => "UP Manila Revolving Fund"},
		{:source_name => "UP Manila Tuition Fee Increase"},
		{:source_name => "UP Mindanao Endowment Fund"},
		{:source_name => "UP Mindanao General Fund"},
		{:source_name => "UP Mindanao Revolving Fund"},
		{:source_name => "UP Mindanao Tuition Fee Increase"},
		{:source_name => "UP OpenU Endowment Fund"},
		{:source_name => "UP OpenU Endowment Fund"},
		{:source_name => "UP OpenU General Fund"},
		{:source_name => "UP OpenU Revolving Fund"},
		{:source_name => "UP OpenU Tuition Fee Increase"},
		{:source_name => "UP System 40% Share of S&T Parks"},
		{:source_name => "UP System Endowment Fund"},
		{:source_name => "UP System General Fund"},
		{:source_name => "UP System Revolving Fund"},
		{:source_name => "UP Visayas Endowment Fund"},
		{:source_name => "UP Visayas General Fund"},
		{:source_name => "UP Visayas Revolving Fund"},
		{:source_name => "UP Visayas Tuition Fee Increase"}
	])

