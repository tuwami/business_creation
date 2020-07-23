# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Apple
(1..4).each do |num|
  Team.create!(name: "KK-Lab,Inc.", current_fund: 114, origin_fund: 114, investment_limit: 5*num)
end
#Banana
(1..4).each do |num|
  Team.create!(name: "XYZ,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end
#Coconut
(1..4).each do |num|
  Team.create!(name: "mckey,Inc.", current_fund: 104, origin_fund: 104, investment_limit: 5*num)
end
#Dragonfruit
(1..4).each do |num|
  Team.create!(name: "THRICE,Inc.", current_fund: 110, origin_fund: 110, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "user01", email: "waqoo01@waqoo.jp", password: "20200723")
User.create!(name: "user02", email: "waqoo02@waqoo.jp", password: "20200723")
User.create!(name: "user03", email: "waqoo03@waqoo.jp", password: "20200723")
User.create!(name: "user04", email: "waqoo04@waqoo.jp", password: "20200723")
#Banana                                                            20200723
User.create!(name: "user05", email: "waqoo05@waqoo.jp", password: "20200723")
User.create!(name: "user06", email: "waqoo06@waqoo.jp", password: "20200723")
User.create!(name: "user07", email: "waqoo07@waqoo.jp", password: "20200723")
User.create!(name: "user08", email: "waqoo08@waqoo.jp", password: "20200723")
#Cocnut                                                            20200723
User.create!(name: "user09", email: "waqoo09@waqoo.jp", password: "20200723")
User.create!(name: "user10", email: "waqoo10@waqoo.jp", password: "20200723")
User.create!(name: "user11", email: "waqoo11@waqoo.jp", password: "20200723")
User.create!(name: "user12", email: "waqoo12@waqoo.jp", password: "20200723")
#Dragonfruit                                                       20200723
User.create!(name: "user13", email: "waqoo13@waqoo.jp", password: "20200723")
User.create!(name: "user14", email: "waqoo14@waqoo.jp", password: "20200723")
User.create!(name: "user15", email: "waqoo15@waqoo.jp", password: "20200723")
User.create!(name: "user16", email: "waqoo16@waqoo.jp", password: "20200723")

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
