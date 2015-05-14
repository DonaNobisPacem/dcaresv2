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

params =  
{ :university =>
    {
	    :university_name => 'UP System'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Diliman'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Manila'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Los Banos'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Baguio'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Visayas'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Cebu'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Mindanao'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP Open University'
	}
}
University.create!(params[:university])

params =  
{ :university =>
    {
	    :university_name => 'UP PGH'
	}
}
University.create!(params[:university])