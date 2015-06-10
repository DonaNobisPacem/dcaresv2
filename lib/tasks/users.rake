namespace :users do
  desc "Add additional users"
  task :add_adtl_users => :environment do  	
      User.create!([
          {:first_name => "Budget Office", :last_name => "UP Cebu", :email => "budget.upcebu@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
          {:first_name => "Budget Office 2", :last_name => "UP Cebu", :email => "upcbudo@gmail.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
          {:first_name => "Dean's Office", :last_name => "UP Cebu", :email => "dean.upcebu@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
          {:first_name => "Eric", :last_name => "Tabafunda", :email => "erictabafunda@yahoo.com", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
          {:first_name => "Ma. Lydia", :last_name => "Callano", :email => "mgcallano@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
          {:first_name => "Kenneth", :last_name => "dela Cruz", :email => "spmo@up.edu.ph", :password => "pass1234", :password_confirmation => "pass1234", :admin => false, :approved => true },
      ])   
  end
end