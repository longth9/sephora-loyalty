require 'faker'

namespace :gen_user do
  desc "Generate data for users table"
  task :init_users => :environment do
    loyalty_id = 1
    50.times do
      u = User.new
      u.first_name = Faker::Name.first_name
      u.last_name = Faker::Name.last_name
      u.email = Faker::Internet.email
      u.age = rand(19...45)
      u.gender = ['female','male'][rand(0...2)]
      u.country = Faker::Address.country_code
      u.loyalty_id = loyalty_id
      u.save
      loyalty_id += 1
    end
  end

  desc "Generate loyalty data for users"
  task :init_loyalties => :environment do
    loyalty_id = 1
    50.times do
      level = rand(1...4)
      l = Loyalty::UserLoyalty.new
      l.id = loyalty_id
      loyalty_id += 1
      l.level = rand(1...4)
      l.save
    end
  end
end
