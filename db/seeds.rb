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
#Elderberry
(1..4).each do |num|
  Team.create!(name: "Elderberr,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "user01", email: "waqoo01@waqoo.jp", password: "20200915")
User.create!(name: "user02", email: "waqoo02@waqoo.jp", password: "20200915")
User.create!(name: "user03", email: "waqoo03@waqoo.jp", password: "20200915")
User.create!(name: "user04", email: "waqoo04@waqoo.jp", password: "20200915")
User.create!(name: "user05", email: "waqoo05@waqoo.jp", password: "20200915")
#Banana                                                            20200915
User.create!(name: "user06", email: "waqoo06@waqoo.jp", password: "20200915")
User.create!(name: "user07", email: "waqoo07@waqoo.jp", password: "20200915")
User.create!(name: "user08", email: "waqoo08@waqoo.jp", password: "20200915")
User.create!(name: "user09", email: "waqoo09@waqoo.jp", password: "20200915")
User.create!(name: "user10", email: "waqoo10@waqoo.jp", password: "20200915")
#Cocnut                                                            20200915
User.create!(name: "user11", email: "waqoo11@waqoo.jp", password: "20200915")
User.create!(name: "user12", email: "waqoo12@waqoo.jp", password: "20200915")
User.create!(name: "user13", email: "waqoo13@waqoo.jp", password: "20200915")
User.create!(name: "user14", email: "waqoo14@waqoo.jp", password: "20200915")
User.create!(name: "user15", email: "waqoo15@waqoo.jp", password: "20200915")
#Dragonfruit                                                       20200915
User.create!(name: "user16", email: "waqoo16@waqoo.jp", password: "20200915")
User.create!(name: "user17", email: "waqoo17@waqoo.jp", password: "20200915")
User.create!(name: "user18", email: "waqoo18@waqoo.jp", password: "20200915")
User.create!(name: "user19", email: "waqoo19@waqoo.jp", password: "20200915")
User.create!(name: "user20", email: "waqoo20@waqoo.jp", password: "20200915")
#Elderberry                                                        20200915
User.create!(name: "user21", email: "waqoo21@waqoo.jp", password: "20200915")
User.create!(name: "user22", email: "waqoo22@waqoo.jp", password: "20200915")
User.create!(name: "user23", email: "waqoo23@waqoo.jp", password: "20200915")
User.create!(name: "user24", email: "waqoo24@waqoo.jp", password: "20200915")
User.create!(name: "user25", email: "waqoo25@waqoo.jp", password: "20200915")

#チームの塊
(1..5).each do |l|
  #STAGE分
  ((4*l - 3)..(4*l)).each do |m|
    #チームメンバー分
    ((5*l - 4)..(5*l)).each do |n|
      UserTeam.create!(team_id: m,user_id: n)
    end
  end
end

#[*'A'..'R'].each do |alphabet|
#  MarketMaster.create!(market_name: "#{alphabet}")
#end

#甲パターン
# MarketMaster.create!(market_name: "A", market_growth_index: 1.177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.10)
# MarketMaster.create!(market_name: "B", market_growth_index: 1.034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
# MarketMaster.create!(market_name: "C", market_growth_index: 1.062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
# MarketMaster.create!(market_name: "D", market_growth_index: 1.105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
# MarketMaster.create!(market_name: "E", market_growth_index: 1.138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
# MarketMaster.create!(market_name: "F", market_growth_index: 0.983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.80)
# MarketMaster.create!(market_name: "G", market_growth_index: 1.092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.50)
# MarketMaster.create!(market_name: "H", market_growth_index: 1.041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
# MarketMaster.create!(market_name: "I", market_growth_index: 1.127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
# MarketMaster.create!(market_name: "J", market_growth_index: 1.016, capital_intensive_index: 8.40, labor_intensive_index: 5.37, sales_retention_index: 0.70)
# MarketMaster.create!(market_name: "K", market_growth_index: 1.050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
# MarketMaster.create!(market_name: "L", market_growth_index: 1.019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
# MarketMaster.create!(market_name: "M", market_growth_index: 1.138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
# MarketMaster.create!(market_name: "N", market_growth_index: 0.993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
# MarketMaster.create!(market_name: "O", market_growth_index: 1.149, capital_intensive_index: 10.2, labor_intensive_index: 7.62, sales_retention_index: 0.19)
# MarketMaster.create!(market_name: "P", market_growth_index: 1.028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.20)
# MarketMaster.create!(market_name: "Q", market_growth_index: 1.030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.90)
# MarketMaster.create!(market_name: "R", market_growth_index: 0.000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

#乙パターン
MarketMaster.create!(market_name: "Apple", market_growth_index: 1.127, capital_intensive_index: 13.8, labor_intensive_index: 4.59, sales_retention_index: 0.11)
MarketMaster.create!(market_name: "Banana", market_growth_index: 1.016, capital_intensive_index: 8.40, labor_intensive_index: 5.37, sales_retention_index: 0.70)
MarketMaster.create!(market_name: "Coconut", market_growth_index: 1.050, capital_intensive_index: 8.61, labor_intensive_index: 4.29, sales_retention_index: 0.97)
MarketMaster.create!(market_name: "Dragonfruit", market_growth_index: 1.019, capital_intensive_index: 7.43, labor_intensive_index: 6.69, sales_retention_index: 0.93)
MarketMaster.create!(market_name: "Elderberry", market_growth_index: 1.138, capital_intensive_index: 14.9, labor_intensive_index: 3.21, sales_retention_index: 0.56)
MarketMaster.create!(market_name: "Fig", market_growth_index: 0.993, capital_intensive_index: 5.97, labor_intensive_index: 15.1, sales_retention_index: 0.33)
MarketMaster.create!(market_name: "Grape", market_growth_index: 1.149, capital_intensive_index: 10.2, labor_intensive_index: 7.62, sales_retention_index: 0.19)
MarketMaster.create!(market_name: "Honeydew", market_growth_index: 1.028, capital_intensive_index: 7.40, labor_intensive_index: 12.5, sales_retention_index: 0.20)
MarketMaster.create!(market_name: "Italian Plum", market_growth_index: 1.030, capital_intensive_index: 6.91, labor_intensive_index: 7.21, sales_retention_index: 0.90)
MarketMaster.create!(market_name: "Jujube", market_growth_index: 1.177, capital_intensive_index: 10.2, labor_intensive_index: 8.25, sales_retention_index: 0.10)
MarketMaster.create!(market_name: "Kiwi", market_growth_index: 1.034, capital_intensive_index: 9.40, labor_intensive_index: 4.80, sales_retention_index: 0.63)
MarketMaster.create!(market_name: "Lemon", market_growth_index: 1.062, capital_intensive_index: 8.65, labor_intensive_index: 7.94, sales_retention_index: 0.55)
MarketMaster.create!(market_name: "Muscat", market_growth_index: 1.105, capital_intensive_index: 5.50, labor_intensive_index: 11.4, sales_retention_index: 0.89)
MarketMaster.create!(market_name: "Nectarine", market_growth_index: 1.138, capital_intensive_index: 13.4, labor_intensive_index: 4.85, sales_retention_index: 0.28)
MarketMaster.create!(market_name: "Orange", market_growth_index: 0.983, capital_intensive_index: 5.21, labor_intensive_index: 13.5, sales_retention_index: 0.80)
MarketMaster.create!(market_name: "Peach", market_growth_index: 1.092, capital_intensive_index: 15.2, labor_intensive_index: 3.91, sales_retention_index: 0.50)
MarketMaster.create!(market_name: "Quince", market_growth_index: 1.041, capital_intensive_index: 8.93, labor_intensive_index: 8.44, sales_retention_index: 0.34)
MarketMaster.create!(market_name: "Recruitment", market_growth_index: 0.000, capital_intensive_index: 0.00, labor_intensive_index: 0.00, sales_retention_index: 0.00)

(1..Team.all.count).each do |n|
  (1..MarketMaster.all.count).each do |m|
    if m == 18
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 0)
    end
  end
end
