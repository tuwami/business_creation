# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create!(name: "team_a")
Team.create!(name: "team_b")

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
User.create!(email: "aa@aa", password: "pppppp", team_id: 1)
User.create!(email: "uwami.ti1@waqoo.jp", password: "taiseiuwami", team_id: 1)
User.create!(email: "uwami.ti2@waqoo.jp", password: "taiseiuwami", team_id: 1)
User.create!(email: "uwami.ti3@waqoo.jp", password: "taiseiuwami", team_id: 1)
User.create!(email: "uwami.ti4@waqoo.jp", password: "taiseiuwami", team_id: 1)
User.create!(email: "miyakawa@waqoo.jp", password: "miyakawa", team_id: 2)
User.create!(email: "takaya@waqoo.jp", password: "takaya", team_id: 3)
User.create!(email: "murata@waqoo.jp", password: "murata", team_id: 4)
User.create!(email: "sakamoto@waqoo.jp", password: "sakamoto", team_id: 4)
User.create!(email: "matsunaga@waqoo.jp", password: "matsunaga", team_id: 5)
User.create!(email: "myokotuka@waqoo.jp", password: "yokotuka", team_id: 5)


MarketMaster.create!(market_name: "market_a")
MarketMaster.create!(market_name: "market_b")
MarketMaster.create!(market_name: "market_c")
MarketMaster.create!(market_name: "market_d")
MarketMaster.create!(market_name: "market_e")
MarketMaster.create!(market_name: "market_f")
MarketMaster.create!(market_name: "market_g")
MarketMaster.create!(market_name: "market_h")
MarketMaster.create!(market_name: "market_i")
MarketMaster.create!(market_name: "market_j")
MarketMaster.create!(market_name: "market_k")
MarketMaster.create!(market_name: "market_l")
MarketMaster.create!(market_name: "market_m")
MarketMaster.create!(market_name: "market_n")
MarketMaster.create!(market_name: "market_o")
MarketMaster.create!(market_name: "market_p")
MarketMaster.create!(market_name: "market_q")
MarketMaster.create!(market_name: "market_r")

2.times do |n|
  18.times do |m|
    Market.create!(market_master_id: m+1,team_id: n+1)
  end
end