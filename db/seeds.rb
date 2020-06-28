# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create!(name: "Moneykineko1", current_fund: 124, origin_fund: 124)
Team.create!(name: "Moneykineko2", current_fund: 124, origin_fund: 124)
Team.create!(name: "Moneykineko3", current_fund: 124, origin_fund: 124)
Team.create!(name: "Moneykineko4", current_fund: 124, origin_fund: 124)

Team.create!(name: "フルーツ1", current_fund: 124, origin_fund: 124)
Team.create!(name: "フルーツ2", current_fund: 124, origin_fund: 124)
Team.create!(name: "フルーツ3", current_fund: 124, origin_fund: 124)
Team.create!(name: "フルーツ4", current_fund: 124, origin_fund: 124)

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

User.create!(email: "ariyasu.kn@waqoo.jp", password: "ariyasu.kn.waqoo")
User.create!(email: "son@waqoo.jp", password: "son.waqoo")
User.create!(email: "furiya.ys@waqoo.jp", password: "furiya.ys.waqoo")
User.create!(email: "matano.rh@waqoo.jp", password: "matano.rh.waqoo")
User.create!(email: "otsuki.ys@waqoo.jp", password: "otsuki.ys.waqoo")
User.create!(email: "nagaki.so@waqoo.jp", password: "nagaki.so.waqoo")
User.create!(email: "miyata.ro@waqoo.jp", password: "miyata.ro.waqoo")
User.create!(email: "yoneda.nn@waqoo.jp", password: "yoneda.nn.waqoo")

# teamの塊一つ目
UserTeam.create!(team_id: 1,user_id: 1)
UserTeam.create!(team_id: 1,user_id: 2)
UserTeam.create!(team_id: 1,user_id: 3)
UserTeam.create!(team_id: 1,user_id: 4)

UserTeam.create!(team_id: 2,user_id: 1)
UserTeam.create!(team_id: 2,user_id: 2)
UserTeam.create!(team_id: 2,user_id: 3)
UserTeam.create!(team_id: 2,user_id: 4)

UserTeam.create!(team_id: 3,user_id: 1)
UserTeam.create!(team_id: 3,user_id: 2)
UserTeam.create!(team_id: 3,user_id: 3)
UserTeam.create!(team_id: 3,user_id: 4)

UserTeam.create!(team_id: 4,user_id: 1)
UserTeam.create!(team_id: 4,user_id: 2)
UserTeam.create!(team_id: 4,user_id: 3)
UserTeam.create!(team_id: 4,user_id: 4)

# teamの塊２つ目
UserTeam.create!(team_id: 5,user_id: 5)
UserTeam.create!(team_id: 5,user_id: 6)
UserTeam.create!(team_id: 5,user_id: 7)
UserTeam.create!(team_id: 5,user_id: 8)

UserTeam.create!(team_id: 6,user_id: 5)
UserTeam.create!(team_id: 6,user_id: 6)
UserTeam.create!(team_id: 6,user_id: 7)
UserTeam.create!(team_id: 6,user_id: 8)

UserTeam.create!(team_id: 7,user_id: 5)
UserTeam.create!(team_id: 7,user_id: 6)
UserTeam.create!(team_id: 7,user_id: 7)
UserTeam.create!(team_id: 7,user_id: 8)

UserTeam.create!(team_id: 8,user_id: 5)
UserTeam.create!(team_id: 8,user_id: 6)
UserTeam.create!(team_id: 8,user_id: 7)
UserTeam.create!(team_id: 8,user_id: 8)

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
