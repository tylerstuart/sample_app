namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
  	admin = User.create!(name: "Tyler Stuart",
  				 email: "tstuart@1on1.com",
  				 password: "tyler1",
  				 password_confirmation: "tyler1")
  	admin.toggle!(:admin)

  	40.times do |n|
  	  name  =Faker::Name.name
  	  email = "example-#{n+1}@railstutorial.org"
  	  password = "password"
  	  User.create!(name: name,
  	  			   email: email,
  	  			   password: password,
  	  			   password_confirmation: password)
  	end
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end	
end