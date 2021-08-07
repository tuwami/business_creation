# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# #本番
# #Apple
# team = Team.create!(name: "Apple,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
# (2..4).each do |num|
#   Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
# end
# #Banana
# Team.create!(name: "Banana,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
# (2..4).each do |num|
#   Team.create!(name: "Banana,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
# end
# #Coconut
# Team.create!(name: "Coconut,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
# (2..4).each do |num|
#   Team.create!(name: "Coconut,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
# end
# #Dragonfruit
# Team.create!(name: "Dragonfruit,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
# (2..4).each do |num|
#   Team.create!(name: "Dragonfruit,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
# end
# #Elderberry
# Team.create!(name: "Elderberry,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
# (2..4).each do |num|
#   Team.create!(name: "Elderberr,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
# end

# Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
# Admin.create!(email: "aa@aa", password: "pppppp")

# #Apple
# user = User.create!(name: "user01", email: "waqoo01@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user02", email: "waqoo02@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user03", email: "waqoo03@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user04", email: "waqoo04@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user05", email: "waqoo05@waqoo.jp", password: "waqoo2021")
# #Banana                                                            waqoo2021
# User.create!(name: "user06", email: "waqoo06@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user07", email: "waqoo07@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user08", email: "waqoo08@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user09", email: "waqoo09@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user10", email: "waqoo10@waqoo.jp", password: "waqoo2021")
# #Cocnut                                                            waqoo2021
# User.create!(name: "user11", email: "waqoo11@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user12", email: "waqoo12@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user13", email: "waqoo13@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user14", email: "waqoo14@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user15", email: "waqoo15@waqoo.jp", password: "waqoo2021")
# #Dragonfruit                                                       waqoo2021
# User.create!(name: "user16", email: "waqoo16@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user17", email: "waqoo17@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user18", email: "waqoo18@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user19", email: "waqoo19@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user20", email: "waqoo20@waqoo.jp", password: "waqoo2021")
# #Elderberry                                                        waqoo2021
# User.create!(name: "user21", email: "waqoo21@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user22", email: "waqoo22@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user23", email: "waqoo23@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user24", email: "waqoo24@waqoo.jp", password: "waqoo2021")
# User.create!(name: "user25", email: "waqoo25@waqoo.jp", password: "waqoo2021")

# #チームの塊
# (1..5).each do |l|
#   #STAGE分
#   ((4*l - 3)..(4*l)).each do |m|
#     #チームメンバー分
#     ((5*l - 4)..(5*l)).each do |n|
#       UserTeam.create!(team_id: m + team.id - 1,user_id: n + user.id - 1)
#     end
#   end
# end

#Dev
#Apple
team = Team.create!(name: "Apple,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Apple,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Banana
Team.create!(name: "Banana,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Banana,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Coconut
Team.create!(name: "Coconut,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Coconut,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Dragonfruit
Team.create!(name: "Dragonfruit,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Dragonfruit,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Elderberry
Team.create!(name: "Elderberry,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Elderberr,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Fig
Team.create!(name: "Fig,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Fig,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Grape
Team.create!(name: "Grape,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Grape,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Honeydew
Team.create!(name: "Honeydew,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Honeydew,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Italian Plum
Team.create!(name: "Italian Plum,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Intalian Plum,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Jujube
Team.create!(name: "Jujube,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Jujube,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Kiwi
Team.create!(name: "Kiwi,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Kiwi,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Lemon
Team.create!(name: "Lemon,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Lemon,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Muscat
Team.create!(name: "Muscat,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Muscat,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Nectarine
Team.create!(name: "Nectarine,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Nectarine,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Orange
Team.create!(name: "Orange,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Orange,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Peach
Team.create!(name: "Peach,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Peach,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end
#Quince
Team.create!(name: "Quince,Inc.", current_fund: 50, origin_fund: 50, current_employee: 10, current_novice: 9, investment_limit: 5*1)
(2..4).each do |num|
  Team.create!(name: "Quince,Inc.", current_fund: 100, origin_fund: 100, current_employee: 20, current_novice: 19, investment_limit: 5*num)
end


Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
user = User.create!(name: "a1", email: "a1@waqoo.jp", password: "a1.waqoo")

#Banana
User.create!(name: "b1", email: "b1@waqoo.jp", password: "b1.waqoo")

#Cocnut
User.create!(name: "c1", email: "c1@waqoo.jp", password: "c1.waqoo")

#Dragonfruit
User.create!(name: "d1", email: "d1@waqoo.jp", password: "d1.waqoo")

#Elderberry
User.create!(name: "e1", email: "e1@waqoo.jp", password: "e1.waqoo")

#Fig
User.create!(name: "f1", email: "f1@waqoo.jp", password: "f1.waqoo")

#Grape
User.create!(name: "g1", email: "g1@waqoo.jp", password: "g1.waqoo")

#Honeydew
User.create!(name: "h1", email: "h1@waqoo.jp", password: "h1.waqoo")

#Italian Plum
User.create!(name: "i1", email: "i1@waqoo.jp", password: "i1.waqoo")

#Jujube
User.create!(name: "j1", email: "j1@waqoo.jp", password: "j1.waqoo")

#Kiwi
User.create!(name: "k1", email: "k1@waqoo.jp", password: "k1.waqoo")

#Lemon
User.create!(name: "l1", email: "l1@waqoo.jp", password: "l1.waqoo")

#Muscat
User.create!(name: "m1", email: "m1@waqoo.jp", password: "m1.waqoo")

#Nectarine
User.create!(name: "n1", email: "n1@waqoo.jp", password: "n1.waqoo")

#Orange
User.create!(name: "o1", email: "o1@waqoo.jp", password: "o1.waqoo")

#Peach
User.create!(name: "p1", email: "p1@waqoo.jp", password: "p1.waqoo")

#Quince
User.create!(name: "q1", email: "q1@waqoo.jp", password: "q1.waqoo")

#チームの塊
(1..17).each do |l|
  #Stage分
  ((4*l - 3)..(4*l)).each do |m|
    #チームメンバー分
    UserTeam.create!(team_id: m + team.id - 1,user_id: l + user.id - 1)
  end
end

# [*'A'..'R'].each do |alphabet|
#  MarketMaster.create!(market_name: "#{**alphabet}")
# end

#甲パターン
marketmaster = MarketMaster.create!(market_name: "Apple", market_growth_index: 1.00177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.11)
MarketMaster.create!(market_name: "Banana", market_growth_index: 1.00034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
MarketMaster.create!(market_name: "Coconut", market_growth_index: 1.00062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
MarketMaster.create!(market_name: "Dragonfruit", market_growth_index: 1.00105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
MarketMaster.create!(market_name: "Elderberry", market_growth_index: 1.00138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
MarketMaster.create!(market_name: "Fig", market_growth_index: 0.99983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.81)
MarketMaster.create!(market_name: "Grape", market_growth_index: 1.00092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.48)
MarketMaster.create!(market_name: "Honeydew", market_growth_index: 1.00041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
MarketMaster.create!(market_name: "Itarian Plum", market_growth_index: 1.00127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
MarketMaster.create!(market_name: "Jujube", market_growth_index: 1.00016, capital_intensive_index: 8.40, labor_intensive_index: 7.21, sales_retention_index: 0.72)
MarketMaster.create!(market_name: "Kiwi", market_growth_index: 1.00050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
MarketMaster.create!(market_name: "Lemon", market_growth_index: 1.00019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
MarketMaster.create!(market_name: "Muscat", market_growth_index: 1.00138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
MarketMaster.create!(market_name: "Nectarine", market_growth_index: 0.99993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
MarketMaster.create!(market_name: "Orange", market_growth_index: 1.00149, capital_intensive_index: 10.2, labor_intensive_index: 6.75, sales_retention_index: 0.43)
MarketMaster.create!(market_name: "Peach", market_growth_index: 1.00028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.21)
MarketMaster.create!(market_name: "Quince", market_growth_index: 1.00030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.92)
MarketMaster.create!(market_name: "Recruitment", market_growth_index: 0.00000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

#乙パターン
# marketmaster = MarketMaster.create!(market_name: "Apple", market_growth_index: 1.00127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
# MarketMaster.create!(market_name: "Banana", market_growth_index: 1.00016, capital_intensive_index: 8.40, labor_intensive_index: 7.21, sales_retention_index: 0.72)
# MarketMaster.create!(market_name: "Coconut", market_growth_index: 1.00050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
# MarketMaster.create!(market_name: "Dragonfruit", market_growth_index: 1.00019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
# MarketMaster.create!(market_name: "Elderberry", market_growth_index: 1.00138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
# MarketMaster.create!(market_name: "Fig", market_growth_index: 0.99993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
# MarketMaster.create!(market_name: "Grape", market_growth_index: 1.00149, capital_intensive_index: 10.2, labor_intensive_index: 6.75, sales_retention_index: 0.43)
# MarketMaster.create!(market_name: "Honeydew", market_growth_index: 1.00028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.21)
# MarketMaster.create!(market_name: "Italian Plum", market_growth_index: 1.00030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.92)
# MarketMaster.create!(market_name: "Jujube", market_growth_index: 1.00177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.11)
# MarketMaster.create!(market_name: "Kiwi", market_growth_index: 1.00034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
# MarketMaster.create!(market_name: "Lemon", market_growth_index: 1.00062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
# MarketMaster.create!(market_name: "Muscat", market_growth_index: 1.00105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
# MarketMaster.create!(market_name: "Nectarine", market_growth_index: 1.00138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
# MarketMaster.create!(market_name: "Orange", market_growth_index: 0.99983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.81)
# MarketMaster.create!(market_name: "Peach", market_growth_index: 1.00092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.48)
# MarketMaster.create!(market_name: "Quince", market_growth_index: 1.00041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
# MarketMaster.create!(market_name: "Recruitment", market_growth_index: 0.00000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

(1..Team.all.count).each do |n|
  (1..MarketMaster.all.count).each do |m|
    if m % 18 == 0
      Market.create!(market_master_id: m + marketmaster.id - 1,team_id: n + team.id - 1,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m + marketmaster.id - 1,team_id: n + team.id - 1,default_each_market_employee: 0)
    end
  end
end
