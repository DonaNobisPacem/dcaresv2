require 'roo'

User.create!([
		{:first_name => "John Thomas Raphael", :last_name => "Dulay", :email => "johnthomasraphael@gmail.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => true, :approved => true },
		{:first_name => "Raymundo", :last_name => "Rovillos", :email => "rdrovillos@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Michael", :last_name => "Tee", :email => "mltee@post.upm.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Cherrylyn", :last_name => "De Leon-Cabrera", :email => "cdcabrera@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Michael", :last_name => "Tan", :email => "mltan@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Marish", :last_name => "Madlangbayan", :email => "msmadlangbayan@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Fernando", :last_name => "Sanchez", :email => "fcsanchez@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Sylvia", :last_name => "Concepcion", :email => "sbconcepcion@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Liza", :last_name => "Corro", :email => "ldcorro@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Elvira", :last_name => "Zamora", :email => "eazamora@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Carmencita", :last_name => "Padilla", :email => "cdpadilla@post.upm.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Consuelo", :last_name => "Habito", :email => "conie.habito@upou.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Lilian", :last_name => "Diamante", :email => "lilian.diamante@upou.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Jessica", :last_name => "Cariño", :email => "jkcarino@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Mar", :last_name => "Viernes", :email => "viernesmar11@gmail.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Raquel", :last_name => "Florendo", :email => "achebf@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Gigi", :last_name => "Flores", :email => "gigipssp@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Rommel", :last_name => "Espinosa", :email => "raespinosa2000@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Jose", :last_name => "Gonzales", :email => "pgh_director@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Evelyn", :last_name => "Belleza", :email => "etbelleza8@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Miladilla", :last_name => "Santiago", :email => "masantiago@post.upm.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Steve Ivan", :last_name => "Dalumpines", :email => "steveian.dalumpines@upou.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Allen", :last_name => "Buenaventura", :email => "arbuena@gmail.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Carlos", :last_name => "Forteza", :email => "cnforteza@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Edmundo", :last_name => "Camello", :email => "eacamello@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Nelda", :last_name => "Gutierrez", :email => "nggutierrez@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Richmon", :last_name => "Pancho", :email => "rmpancho@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
		{:first_name => "Alfredo", :last_name => "Pascual", :email => "apascual@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true }
	])
University.create!([
		{:university_name => "UP Baguio", :university_code => "UPB"},
		{:university_name => "UP Cebu", :university_code => "UPC"},
		{:university_name => "UP Diliman", :university_code => "UPD"},
		{:university_name => "UP Los Banos", :university_code => "UPLB"},
		{:university_name => "UP Manila", :university_code => "UPM"},
		{:university_name => "UP Mindanao", :university_code => "UPMIN"},
		{:university_name => "UP Open University", :university_code => "UPOU"},
		{:university_name => "UP PGH", :university_code => "UPPGH"},
		{:university_name => "UP System", :university_code => "UPS"},
		{:university_name => "UP Visayas", :university_code => "UPV"},
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

#UP BAGUIO Offset 0
xlsx = Roo::Spreadsheet.open('./db/source/up_baguio.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(21) do |line|
	params =  
	{ :project =>
		{
			:university_id => "1",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
23.upto(41) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP CEBU Offset 14
xlsx = Roo::Spreadsheet.open('./db/source/up_cebu.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(25) do |line|
	params =  
	{ :project =>
		{
			:university_id => "2",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
27.upto(28) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP DILIMAN Offset 32
xlsx = Roo::Spreadsheet.open('./db/source/up_diliman.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(192) do |line|
	params =  
	{ :project =>
		{
			:university_id => "3",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
194.upto(207) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP LOS BANOS 217
xlsx = Roo::Spreadsheet.open('./db/source/up_los_banos.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(83) do |line|
	params =  
	{ :project =>
		{
			:university_id => "4",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
#UP MANILA 293
xlsx = Roo::Spreadsheet.open('./db/source/up_manila.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(43) do |line|
	params =  
	{ :project =>
		{
			:university_id => "5",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
45.upto(57) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP MINDANAO 329
xlsx = Roo::Spreadsheet.open('./db/source/up_mindanao.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(32) do |line|
	params =  
	{ :project =>
		{
			:university_id => "6",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
34.upto(37) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP OU 354
xlsx = Roo::Spreadsheet.open('./db/source/up_ou.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(22) do |line|
	params =  
	{ :project =>
		{
			:university_id => "7",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
24.upto(25) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP PGH 369
xlsx = Roo::Spreadsheet.open('./db/source/up_pgh.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(12) do |line|
	params =  
	{ :project =>
		{
			:university_id => "8",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
14.upto(29) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP SYSTEM 374
xlsx = Roo::Spreadsheet.open('./db/source/up_sys.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(25) do |line|
	params =  
	{ :project =>
		{
			:university_id => "9",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
27.upto(28) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end
#UP VISAYAS 392
xlsx = Roo::Spreadsheet.open('./db/source/up_visayas.xlsx')
xlsx.default_sheet = xlsx.sheets[0]
8.upto(89) do |line|
	params =  
	{ :project =>
		{
			:university_id => "10",
			:project_code => "",
			:project_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
			:status => "",
			:completed_by => "",
		}
	}
	Project.create!(params[:project])
end
91.upto(105) do |line|
	params =  
	{ :project_component =>
		{
			:project_id => xlsx.cell(line,'A'),
			:component_name => xlsx.cell(line,'B'),
			:description => xlsx.cell(line,'C'),
			:expected_outcome => xlsx.cell(line,'D'),
			:financial_budget => xlsx.cell(line,'E'),
			:financial_contract_price => xlsx.cell(line,'F'),
			:financial_actual_cost => xlsx.cell(line,'G'),
			:financial_source => xlsx.cell(line,'H'),
			:bidding_contractor => xlsx.cell(line,'I'),
			:bidding_number => xlsx.cell(line,'J'),
			:bidding_award => xlsx.cell(line,'K'),
			:bidding_proceed => xlsx.cell(line,'L'),
			:timeline_target_start => xlsx.cell(line,'M'),
			:timeline_actual_start => xlsx.cell(line,'N'),
			:percent_accomplishment => xlsx.cell(line,'O'),
			:percent_accomplishment_by => "",
			:timeline_target_end => xlsx.cell(line,'P'),
			:timeline_actual_end => xlsx.cell(line,'Q'),
			:remarks => xlsx.cell(line,'R'),
		}
	}
	ProjectComponent.create!(params[:project_component])
end