# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Apple
(1..4).each do |num|
  Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end
#Banana
(1..4).each do |num|
  Team.create!(name: "Banana,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end
#Coconut
(1..4).each do |num|
  Team.create!(name: "Coconut,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end
#Dragonfruit
(1..4).each do |num|
  Team.create!(name: "Dragonfruit,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "Apple1", email: "Apple1@waqoo.jp", password: "Apple1.waqoo")
User.create!(name: "Apple2", email: "Apple2@waqoo.jp", password: "Apple2.waqoo")
User.create!(name: "Apple3", email: "Apple3@waqoo.jp", password: "Apple3.waqoo")
User.create!(name: "Apple4", email: "Apple4@waqoo.jp", password: "Apple4.waqoo")

#Banana
User.create!(name: "Banana1", email: "Banana1@waqoo.jp", password: "Banana1.waqoo")
User.create!(name: "Banana2", email: "Banana2@waqoo.jp", password: "Banana2.waqoo")
User.create!(name: "Banana3", email: "Banana3@waqoo.jp", password: "Banana3.waqoo")
User.create!(name: "Banana4", email: "Banana4@waqoo.jp", password: "Banana4.waqoo")

#Cocnut
User.create!(name: "Coconut1", email: "Coconut1@waqoo.jp", password: "Coconut1.waqoo")
User.create!(name: "Coconut2", email: "Coconut2@waqoo.jp", password: "Coconut2.waqoo")
User.create!(name: "Coconut3", email: "Coconut3@waqoo.jp", password: "Coconut3.waqoo")
User.create!(name: "Coconut4", email: "Coconut4@waqoo.jp", password: "Coconut4.waqoo")

#Dragonfruit
User.create!(name: "Dragonfruit1", email: "Dragonfruit1@waqoo.jp", password: "Dragonfruit1.waqoo")
User.create!(name: "Dragonfruit2", email: "Dragonfruit2@waqoo.jp", password: "Dragonfruit2.waqoo")
User.create!(name: "Dragonfruit3", email: "Dragonfruit3@waqoo.jp", password: "Dragonfruit3.waqoo")
User.create!(name: "Dragonfruit4", email: "Dragonfruit4@waqoo.jp", password: "Dragonfruit4.waqoo")

#チームの塊
(1..4).each do |l|
  ((4*l - 3)..(4*l)).each do |m|
    ((4*l - 3)..(4*l)).each do |n|
      UserTeam.create!(team_id: m,user_id: n)
    end
  end
end

[*'A'..'R'].each do |alphabet|
  MarketMaster.create!(market_name: "#{alphabet}")
end

(1..Team.all.count).each do |n|
  (1..MarketMaster.all.count).each do |m|
    if m == 18
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 0)
    end
  end
end
