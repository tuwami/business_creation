# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create!(name: "Moneykineko", origin_fund: 124)
Team.create!(name: "フルーツ", origin_fund: 124)
Team.create!(name: "Sample", origin_fund: 100)

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")
User.create!(email: "ariyasu.kn@waqoo.jp", password: "ariyasu.kn.waqoo", team_id: 1)
User.create!(email: "son@waqoo.jp", password: "son.waqoo", team_id: 1)
User.create!(email: "furiya.ys@waqoo.jp", password: "furiya.ys.waqoo", team_id: 1)
User.create!(email: "matano.rh@waqoo.jp", password: "matano.rh.waqoo", team_id: 1)
User.create!(email: "otsuki.ys@waqoo.jp", password: "otsuki.ys.waqoo", team_id: 2)
User.create!(email: "nagaki.so@waqoo.jp", password: "nagaki.so.waqoo", team_id: 2)
User.create!(email: "miyata.ro@waqoo.jp", password: "miyata.ro.waqoo", team_id: 2)
User.create!(email: "yoneda.nn@waqoo.jp", password: "yoneda.nn.waqoo", team_id: 2)
User.create!(email: "takaya@waqoo.jp", password: "takaya.waqoo", team_id: 3)


[*'A'..'R'].each do |alphabet|
  MarketMaster.create!(market_name: "#{alphabet}")
end

(1..3).each do |n|
  (1..18).each do |m|
    if m == 18
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 0)
    end
  end
end