# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#User sample data
first_names = ["Sam", "Bill", "Sally", "Fred", "Bob", "Jane", "Real"]
last_names = ["Smith", "Faker", "Person", "McTester", "Baker"]
cities = ['San Francisco', 'Oakland', 'Daly City', 'Walnut Creek', 'Santa Cruz']

#This should automatically create accounts for the users
10.times do |i|
	user = User.create! :email => "person#{i+20}@email.com", :password => "password"

	profile = Profile.create! :user_id => user.id, :first_name => first_names.sample,:last_name => last_names.sample, :gender => ["Male", "Female"].sample, :phone_number => rand.to_s[2..11], :address1 => '123 Real St', :address2 => 'Apt 2', :city => cities.sample, :state => 'CA', :postal_code => '94110', :country => 'United States', :annual_income => rand.to_s[20000..200000]

end

project1 = Project.create! :description => 'Home in Oakland', :address1 => '123 Super Bowl Road', :city => 'San Mateo', :state => 'CA', :postal_code => '94123', :country => 'United States', :seeds_required => 50, :share_price => 10, :seeds_count => 10, :long_lat => "POINT(#{-122.32} #{37.56})"

project2 = Project.create! :description => 'Home in Albany', :address1 => '123 Celtics Place', :city => 'Albany', :state => 'CA', :postal_code => '94706', :country => 'United States', :seeds_required => 30, :share_price => 20, :seeds_count => 5, :long_lat => "POINT(#{-122.29} #{37.88})"

project3 = Project.create! :description => 'Trendy Restaurant', :address1 => '321 Capitalism Lane', :city => 'El Cerrito', :state => 'CA', :postal_code => '95434', :country => 'United States', :seeds_required => 500, :share_price => 100, :seeds_count => 4, :long_lat => "POINT(#{-122.31} #{37.9})"

project4 = Project.create! :description => 'Tiny Home Needs Solar Heat', :address1 => '543 Happy Road', :city => 'San Francisco', :state => 'CA', :postal_code => '94123', :country => 'United States', :seeds_required => 200, :share_price => 50, :seeds_count => 23, :long_lat => "POINT(#{-122.41} #{37.74})"

project5 = Project.create! :description => 'Big Home', :address1 => '789 Open Lane', :city => 'Berkeley', :state => 'CA', :postal_code => '94677', :country => 'United States', :seeds_required => 1000, :share_price => 10, :seeds_count => 10, :long_lat => "POINT(#{-122.27} #{37.87})"
