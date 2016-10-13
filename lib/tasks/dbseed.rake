namespace :dbseed do
  desc "Add Source of Funds"
  task :add_sof => :environment do
    FundSource.destroy_all
    FundSource.create!([
      {:source_name => "2012 Academic Program Improvement (API)"},
      {:source_name => "2012 CHED-DAP Funding"},
      {:source_name => "2012 PAEP's Initiative"},
      {:source_name => "2013 Academic Program Improvement (API)"},
      {:source_name => "2013 GAA-CO Budget"},
      {:source_name => "2013 PAEP's Initiative"},
      {:source_name => "2014 GAA-CO Budget"},
      {:source_name => "2014 GAA-CO Budget (CIDP)"},
      {:source_name => "2015 GAA-CO Budget"},
      {:source_name => "Interest Income from CU Endowment Fund"},
      {:source_name => "CU Revolving Fund"},
      {:source_name => "CU Undergrad Tuition Fee Increment (UG TFI)"},
      {:source_name => "Donation"},
      {:source_name => "Funding from Government Agencies"},
      {:source_name => "UP System Revolving Fund"}
    ])
  end
end
