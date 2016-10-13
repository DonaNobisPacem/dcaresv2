University.create!([
		{:university_name => "UP Baguio", :university_code => "UPB"},
		{:university_name => "UP Cebu", :university_code => "UPC"},
		{:university_name => "UP Diliman", :university_code => "UPD"},
		{:university_name => "UP Los Banos", :university_code => "UPL"},
		{:university_name => "UP Manila", :university_code => "UPM"},
		{:university_name => "UP Mindanao", :university_code => "UPN"},
		{:university_name => "UP Open University", :university_code => "UPO"},
		{:university_name => "UP PGH", :university_code => "UPP"},
		{:university_name => "UP System", :university_code => "UPS"},
		{:university_name => "UP Visayas", :university_code => "UPV"},
	])

ProjectStatus.create!([
		{:description => "Completed"},
		{:description => "Ongoing"},
		{:description => "On Hold"},
		{:description => "Terminated"},
		{:description => "For Bidding"},
		{:description => "Bidding Stage"},
		{:description => "With IOB"}
	])

FundSource.create!([
		{:source_name => "2012 Academic Program Improvement (API)", :fund_source_classification => "2012 GAA Budget"},
		{:source_name => "2012 CHED-DAP", :fund_source_classification => "2012 GAA Budget"},
		{:source_name => "2012 PAEP's Initiative", :fund_source_classification => "2012 GAA Budget"},
		{:source_name => "2013 Academic Program Improvement (API)", :fund_source_classification => "2013 GAA Budget"},
		{:source_name => "2013 GAA-CO Budget", :fund_source_classification => "2013 GAA Budget"},
		{:source_name => "2013 PAEP's Initiative", :fund_source_classification => "2013 GAA Budget"},
		{:source_name => "2014 GAA-CO Budget", :fund_source_classification => "2014 GAA Budget"},
		{:source_name => "2014 GAA-CO Budget", :fund_source_classification => "(CIDP)	2014 GAA Budget"},
		{:source_name => "2015 GAA-CO Budget", :fund_source_classification => "2015 GAA Budget"},
		{:source_name => "Interest Income from CU Endowment Fund", :fund_source_classification => "Interest Earned from Endowment Fund"},
		{:source_name => "CU Revolving Fund", :fund_source_classification => "Revolving Fund"},
		{:source_name => "CU Undergrad Tuition Fee Increment (UG TFI)", :fund_source_classification => "Tuition Fee Increment"},
		{:source_name => "Donation", :fund_source_classification => "Donations"},
		{:source_name => "Funding from Government Agencies", :fund_source_classification => "Funding from Government Agencies"},
		{:source_name => "UP System Revolving Fund", :fund_source_classification => "Revolving Fund"},
		{:source_name => "2011 GAA-CO Budget", :fund_source_classification => "2011 GAA Budget"},
		{:source_name => "2012 GAA-CO Budget", :fund_source_classification => "2012 GAA Budget"},
		{:source_name => "2016 GAA-CO Budget", :fund_source_classification => "2016 GAA Budget"},
		{:source_name => "UP System Admin Reprogramming of Unexpended Obligation", :fund_source_classification => "Revolving Fund"},
		{:source_name => "Calamity Assistance and Rehabilitation Effort (FY 2007)"},
		{:source_name => "Reprogrammed Funds"},
		{:source_name => "PDAF"},
		{:source_name => "CU Graduate Tuition Fee Increment (G TFI)", :fund_source_classification => "Tuition Fee Increment"},
		{:source_name => "OVPD MOOE", :fund_source_classification => "MOOE"},
		{:source_name => "UP BGC MOOE", :fund_source_classification => "MOOE"},
		{:source_name => "2014 PAEP's Initiative", :fund_source_classification => "2014 GAA Budget"},
		{:source_name => "2015 PAEP's Initiative", :fund_source_classification => "2015 GAA Budget"},
		{:source_name => "2016 PAEP's Initiative", :fund_source_classification => "2016 GAA Buddet"}
	])


