# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#本番
#Apple
team = Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*1)
Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*2)
Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*3)
Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*4)

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
#Elderberry
(1..4).each do |num|
  Team.create!(name: "Elderberr,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
user = User.create!(name: "user01", email: "waqoo01@waqoo.jp", password: "waqoo2021")
User.create!(name: "user02", email: "waqoo02@waqoo.jp", password: "waqoo2021")
User.create!(name: "user03", email: "waqoo03@waqoo.jp", password: "waqoo2021")
User.create!(name: "user04", email: "waqoo04@waqoo.jp", password: "waqoo2021")
User.create!(name: "user05", email: "waqoo05@waqoo.jp", password: "waqoo2021")
#Banana                                                            waqoo2021
User.create!(name: "user06", email: "waqoo06@waqoo.jp", password: "waqoo2021")
User.create!(name: "user07", email: "waqoo07@waqoo.jp", password: "waqoo2021")
User.create!(name: "user08", email: "waqoo08@waqoo.jp", password: "waqoo2021")
User.create!(name: "user09", email: "waqoo09@waqoo.jp", password: "waqoo2021")
User.create!(name: "user10", email: "waqoo10@waqoo.jp", password: "waqoo2021")
#Cocnut                                                            waqoo2021
User.create!(name: "user11", email: "waqoo11@waqoo.jp", password: "waqoo2021")
User.create!(name: "user12", email: "waqoo12@waqoo.jp", password: "waqoo2021")
User.create!(name: "user13", email: "waqoo13@waqoo.jp", password: "waqoo2021")
User.create!(name: "user14", email: "waqoo14@waqoo.jp", password: "waqoo2021")
User.create!(name: "user15", email: "waqoo15@waqoo.jp", password: "waqoo2021")
#Dragonfruit                                                       waqoo2021
User.create!(name: "user16", email: "waqoo16@waqoo.jp", password: "waqoo2021")
User.create!(name: "user17", email: "waqoo17@waqoo.jp", password: "waqoo2021")
User.create!(name: "user18", email: "waqoo18@waqoo.jp", password: "waqoo2021")
User.create!(name: "user19", email: "waqoo19@waqoo.jp", password: "waqoo2021")
User.create!(name: "user20", email: "waqoo20@waqoo.jp", password: "waqoo2021")
#Elderberry                                                        waqoo2021
User.create!(name: "user21", email: "waqoo21@waqoo.jp", password: "waqoo2021")
User.create!(name: "user22", email: "waqoo22@waqoo.jp", password: "waqoo2021")
User.create!(name: "user23", email: "waqoo23@waqoo.jp", password: "waqoo2021")
User.create!(name: "user24", email: "waqoo24@waqoo.jp", password: "waqoo2021")
User.create!(name: "user25", email: "waqoo25@waqoo.jp", password: "waqoo2021")

#チームの塊
(1..5).each do |l|
  #STAGE分
  ((4*l - 3)..(4*l)).each do |m|
    #チームメンバー分
    ((5*l - 4)..(5*l)).each do |n|
      UserTeam.create!(team_id: m + team.id - 1,user_id: n + user.id - 1)
    end
  end
end

#Dev
# #Apple
# team = Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*1)
# Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*2)
# Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*3)
# Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*4)

# #Banana
# (1..4).each do |num|
#   Team.create!(name: "Banana,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Coconut
# (1..4).each do |num|
#   Team.create!(name: "Coconut,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Dragonfruit
# (1..4).each do |num|
#   Team.create!(name: "Dragonfruit,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Elderberry
# (1..4).each do |num|
#   Team.create!(name: "Elderberry,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Fig
# (1..4).each do |num|
#   Team.create!(name: "Fig,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Grape
# (1..4).each do |num|
#   Team.create!(name: "Grape,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Honeydew
# (1..4).each do |num|
#   Team.create!(name: "Honeydew,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Italian Plum
# (1..4).each do |num|
#   Team.create!(name: "Italian Plum,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Jujube
# (1..4).each do |num|
#   Team.create!(name: "Jujube,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Kiwi
# (1..4).each do |num|
#   Team.create!(name: "Kiwi,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Lemon
# (1..4).each do |num|
#   Team.create!(name: "Lemon,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Muscat
# (1..4).each do |num|
#   Team.create!(name: "Muscat,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Nectarine
# (1..4).each do |num|
#   Team.create!(name: "Nectarine,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Orange
# (1..4).each do |num|
#   Team.create!(name: "Orange,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Peach
# (1..4).each do |num|
#   Team.create!(name: "Peach,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end
# #Quince
# (1..4).each do |num|
#   Team.create!(name: "Quince,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
# end



# Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
# Admin.create!(email: "aa@aa", password: "pppppp")

# #Apple
# user = User.create!(name: "a1", email: "a1@waqoo.jp", password: "a1.waqoo")
# User.create!(name: "a2", email: "a2@waqoo.jp", password: "a2.waqoo")
# User.create!(name: "a3", email: "a3@waqoo.jp", password: "a3.waqoo")
# User.create!(name: "a4", email: "a4@waqoo.jp", password: "a4.waqoo")
# User.create!(name: "a5", email: "a5@waqoo.jp", password: "a5.waqoo")

# #Banana
# User.create!(name: "b1", email: "b1@waqoo.jp", password: "b1.waqoo")
# User.create!(name: "b2", email: "b2@waqoo.jp", password: "b2.waqoo")
# User.create!(name: "b3", email: "b3@waqoo.jp", password: "b3.waqoo")
# User.create!(name: "b4", email: "b4@waqoo.jp", password: "b4.waqoo")
# User.create!(name: "b5", email: "b5@waqoo.jp", password: "b5.waqoo")

# #Cocnut
# User.create!(name: "c1", email: "c1@waqoo.jp", password: "c1.waqoo")
# User.create!(name: "c2", email: "c2@waqoo.jp", password: "c2.waqoo")
# User.create!(name: "c3", email: "c3@waqoo.jp", password: "c3.waqoo")
# User.create!(name: "c4", email: "c4@waqoo.jp", password: "c4.waqoo")
# User.create!(name: "c5", email: "c5@waqoo.jp", password: "c5.waqoo")

# #Dragonfruit
# User.create!(name: "d1", email: "d1@waqoo.jp", password: "d1.waqoo")
# User.create!(name: "d2", email: "d2@waqoo.jp", password: "d2.waqoo")
# User.create!(name: "d3", email: "d3@waqoo.jp", password: "d3.waqoo")
# User.create!(name: "d4", email: "d4@waqoo.jp", password: "d4.waqoo")
# User.create!(name: "d5", email: "d5@waqoo.jp", password: "d5.waqoo")

# #Elderberry
# User.create!(name: "e1", email: "e1@waqoo.jp", password: "e1.waqoo")
# User.create!(name: "e2", email: "e2@waqoo.jp", password: "e2.waqoo")
# User.create!(name: "e3", email: "e3@waqoo.jp", password: "e3.waqoo")
# User.create!(name: "e4", email: "e4@waqoo.jp", password: "e4.waqoo")
# User.create!(name: "e5", email: "e5@waqoo.jp", password: "e5.waqoo")

# #Fig
# User.create!(name: "f1", email: "f1@waqoo.jp", password: "f1.waqoo")
# User.create!(name: "f2", email: "f2@waqoo.jp", password: "f2.waqoo")
# User.create!(name: "f3", email: "f3@waqoo.jp", password: "f3.waqoo")
# User.create!(name: "f4", email: "f4@waqoo.jp", password: "f4.waqoo")
# User.create!(name: "f5", email: "f5@waqoo.jp", password: "f5.waqoo")

# #Grape
# User.create!(name: "g1", email: "g1@waqoo.jp", password: "g1.waqoo")
# User.create!(name: "g2", email: "g2@waqoo.jp", password: "g2.waqoo")
# User.create!(name: "g3", email: "g3@waqoo.jp", password: "g3.waqoo")
# User.create!(name: "g4", email: "g4@waqoo.jp", password: "g4.waqoo")
# User.create!(name: "g5", email: "g5@waqoo.jp", password: "g5.waqoo")

# #Honeydew
# User.create!(name: "h1", email: "h1@waqoo.jp", password: "h1.waqoo")
# User.create!(name: "h2", email: "h2@waqoo.jp", password: "h2.waqoo")
# User.create!(name: "h3", email: "h3@waqoo.jp", password: "h3.waqoo")
# User.create!(name: "h4", email: "h4@waqoo.jp", password: "h4.waqoo")
# User.create!(name: "h5", email: "h5@waqoo.jp", password: "h5.waqoo")

# #Italian Plum
# User.create!(name: "i1", email: "i1@waqoo.jp", password: "i1.waqoo")
# User.create!(name: "i2", email: "i2@waqoo.jp", password: "i2.waqoo")
# User.create!(name: "i3", email: "i3@waqoo.jp", password: "i3.waqoo")
# User.create!(name: "i4", email: "i4@waqoo.jp", password: "i4.waqoo")
# User.create!(name: "i5", email: "i5@waqoo.jp", password: "i5.waqoo")

# #Jujube
# User.create!(name: "j1", email: "j1@waqoo.jp", password: "j1.waqoo")
# User.create!(name: "j2", email: "j2@waqoo.jp", password: "j2.waqoo")
# User.create!(name: "j3", email: "j3@waqoo.jp", password: "j3.waqoo")
# User.create!(name: "j4", email: "j4@waqoo.jp", password: "j4.waqoo")
# User.create!(name: "j5", email: "j5@waqoo.jp", password: "j5.waqoo")

# #Kiwi
# User.create!(name: "k1", email: "k1@waqoo.jp", password: "k1.waqoo")
# User.create!(name: "k2", email: "k2@waqoo.jp", password: "k2.waqoo")
# User.create!(name: "k3", email: "k3@waqoo.jp", password: "k3.waqoo")
# User.create!(name: "k4", email: "k4@waqoo.jp", password: "k4.waqoo")
# User.create!(name: "k5", email: "k5@waqoo.jp", password: "k5.waqoo")

# #Lemon
# User.create!(name: "l1", email: "l1@waqoo.jp", password: "l1.waqoo")
# User.create!(name: "l2", email: "l2@waqoo.jp", password: "l2.waqoo")
# User.create!(name: "l3", email: "l3@waqoo.jp", password: "l3.waqoo")
# User.create!(name: "l4", email: "l4@waqoo.jp", password: "l4.waqoo")
# User.create!(name: "l5", email: "l5@waqoo.jp", password: "l5.waqoo")

# #Muscat
# User.create!(name: "m1", email: "m1@waqoo.jp", password: "m1.waqoo")
# User.create!(name: "m2", email: "m2@waqoo.jp", password: "m2.waqoo")
# User.create!(name: "m3", email: "m3@waqoo.jp", password: "m3.waqoo")
# User.create!(name: "m4", email: "m4@waqoo.jp", password: "m4.waqoo")
# User.create!(name: "m5", email: "m5@waqoo.jp", password: "m5.waqoo")

# #Nectarine
# User.create!(name: "n1", email: "n1@waqoo.jp", password: "n1.waqoo")
# User.create!(name: "n2", email: "n2@waqoo.jp", password: "n2.waqoo")
# User.create!(name: "n3", email: "n3@waqoo.jp", password: "n3.waqoo")
# User.create!(name: "n4", email: "n4@waqoo.jp", password: "n4.waqoo")
# User.create!(name: "n5", email: "n5@waqoo.jp", password: "n5.waqoo")

# #Orange
# User.create!(name: "o1", email: "o1@waqoo.jp", password: "o1.waqoo")
# User.create!(name: "o2", email: "o2@waqoo.jp", password: "o2.waqoo")
# User.create!(name: "o3", email: "o3@waqoo.jp", password: "o3.waqoo")
# User.create!(name: "o4", email: "o4@waqoo.jp", password: "o4.waqoo")
# User.create!(name: "o5", email: "o5@waqoo.jp", password: "o5.waqoo")

# #Peach
# User.create!(name: "p1", email: "p1@waqoo.jp", password: "p1.waqoo")
# User.create!(name: "p2", email: "p2@waqoo.jp", password: "p2.waqoo")
# User.create!(name: "p3", email: "p3@waqoo.jp", password: "p3.waqoo")
# User.create!(name: "p4", email: "p4@waqoo.jp", password: "p4.waqoo")
# User.create!(name: "p5", email: "p5@waqoo.jp", password: "p5.waqoo")

# #Quince
# User.create!(name: "q1", email: "q1@waqoo.jp", password: "q1.waqoo")
# User.create!(name: "q2", email: "q2@waqoo.jp", password: "q2.waqoo")
# User.create!(name: "q3", email: "q3@waqoo.jp", password: "q3.waqoo")
# User.create!(name: "q4", email: "q4@waqoo.jp", password: "q4.waqoo")
# User.create!(name: "q5", email: "q5@waqoo.jp", password: "q5.waqoo")

# #チームの塊
# (1..17).each do |l|
#   #Stage分
#   ((4*l - 3)..(4*l)).each do |m|
#     #チームメンバー分
#     ((5*l - 4)..(5*l)).each do |n|
#       UserTeam.create!(team_id: m + team.id - 1,user_id: n + user - 1)
#     end
#   end
# end

#[*'A'..'R'].each do |alphabet|
#  MarketMaster.create!(market_name: "#{**alphabet}")
#end

#甲パターン
marketmaster = MarketMaster.create!(market_name: "Apple", market_growth_index: 1.177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.10)
MarketMaster.create!(market_name: "Banana", market_growth_index: 1.034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
MarketMaster.create!(market_name: "Coconut", market_growth_index: 1.062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
MarketMaster.create!(market_name: "Dragonfruit", market_growth_index: 1.105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
MarketMaster.create!(market_name: "Elderberry", market_growth_index: 1.138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
MarketMaster.create!(market_name: "Fig", market_growth_index: 0.983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.80)
MarketMaster.create!(market_name: "Grape", market_growth_index: 1.092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.50)
MarketMaster.create!(market_name: "Honeydew", market_growth_index: 1.041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
MarketMaster.create!(market_name: "Itarian Plum", market_growth_index: 1.127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
MarketMaster.create!(market_name: "Jujube", market_growth_index: 1.016, capital_intensive_index: 8.40, labor_intensive_index: 5.37, sales_retention_index: 0.70)
MarketMaster.create!(market_name: "Kiwi", market_growth_index: 1.050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
MarketMaster.create!(market_name: "Lemon", market_growth_index: 1.019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
MarketMaster.create!(market_name: "Muscat", market_growth_index: 1.138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
MarketMaster.create!(market_name: "Nectarine", market_growth_index: 0.993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
MarketMaster.create!(market_name: "Orange", market_growth_index: 1.149, capital_intensive_index: 10.2, labor_intensive_index: 7.62, sales_retention_index: 0.19)
MarketMaster.create!(market_name: "Peach", market_growth_index: 1.028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.20)
MarketMaster.create!(market_name: "Quince", market_growth_index: 1.030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.90)
MarketMaster.create!(market_name: "Recruitment", market_growth_index: 0.000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

#乙パターン
# marketmaster = MarketMaster.create!(market_name: "Apple", market_growth_index: 1.127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
# MarketMaster.create!(market_name: "Banana", market_growth_index: 1.016, capital_intensive_index: 8.40, labor_intensive_index: 5.37, sales_retention_index: 0.70)
# MarketMaster.create!(market_name: "Coconut", market_growth_index: 1.050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
# MarketMaster.create!(market_name: "Dragonfruit", market_growth_index: 1.019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
# MarketMaster.create!(market_name: "Elderberry", market_growth_index: 1.138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
# MarketMaster.create!(market_name: "Fig", market_growth_index: 0.993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
# MarketMaster.create!(market_name: "Grape", market_growth_index: 1.149, capital_intensive_index: 10.2, labor_intensive_index: 7.62, sales_retention_index: 0.19)
# MarketMaster.create!(market_name: "Honeydew", market_growth_index: 1.028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.20)
# MarketMaster.create!(market_name: "Italian Plum", market_growth_index: 1.030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.90)
# MarketMaster.create!(market_name: "Jujube", market_growth_index: 1.177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.10)
# MarketMaster.create!(market_name: "Kiwi", market_growth_index: 1.034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
# MarketMaster.create!(market_name: "Lemon", market_growth_index: 1.062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
# MarketMaster.create!(market_name: "Muscat", market_growth_index: 1.105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
# MarketMaster.create!(market_name: "Nectarine", market_growth_index: 1.138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
# MarketMaster.create!(market_name: "Orange", market_growth_index: 0.983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.80)
# MarketMaster.create!(market_name: "Peach", market_growth_index: 1.092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.50)
# MarketMaster.create!(market_name: "Quince", market_growth_index: 1.041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
# MarketMaster.create!(market_name: "Recruitment", market_growth_index: 0.000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

(1..Team.all.count).each do |n|
  (1..MarketMaster.all.count).each do |m|
    if m % 18 == 0
      Market.create!(market_master_id: m + marketmaster.id - 1,team_id: n + team.id - 1,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m + marketmaster.id - 1,team_id: n + team.id - 1,default_each_market_employee: 0)
    end
  end
end
