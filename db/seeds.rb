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

Market.create!(market_master_id: 1,team_id: 1)
Market.create!(market_master_id: 2,team_id: 1)
Market.create!(market_master_id: 3,team_id: 1)
Market.create!(market_master_id: 4,team_id: 1)
