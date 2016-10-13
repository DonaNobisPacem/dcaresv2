namespace :project_components do
	desc "transfer fund_sources to funds"
	task :to_funds => :environment do

		ProjectComponent.find_each do |project|
			project.fund_sources.each do |fs|
				Fund.create({ fund_source: fs.id, budget: project.financial_budget, fundable_id: project.id, fundable_type: "ProjectComponent" })
			end
		end
		
	end
end