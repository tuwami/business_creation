# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create!(name: "team_a", origin_fund: 100)
Team.create!(name: "team_b", origin_fund: 100)
Team.create!(name: "team_c", origin_fund: 100)
Team.create!(name: "team_d", origin_fund: 100)
Team.create!(name: "team_e", origin_fund: 100)
Team.create!(name: "team_f", origin_fund: 100)
Team.create!(name: "team_g", origin_fund: 100)
Team.create!(name: "team_h", origin_fund: 100)
Team.create!(name: "team_i", origin_fund: 100)
Team.create!(name: "team_j", origin_fund: 100)
Team.create!(name: "team_k", origin_fund: 100)

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")
User.create!(email: "uwami.ti@waqoo.jp", password: "taiseiuwami", team_id: 1)
User.create!(email: "miyakawa@waqoo.jp", password: "miyakawa.waqoo", team_id: 2)
User.create!(email: "takaya@waqoo.jp", password: "takaya.waqoo", team_id: 3)
User.create!(email: "murata@waqoo.jp", password: "murata.waqoo", team_id: 4)
User.create!(email: "sakamoto@waqoo.jp", password: "sakamoto.waqoo", team_id: 5)
User.create!(email: "matsunaga@waqoo.jp", password: "matsunaga.waqoo", team_id: 6)
User.create!(email: "yokotsuka@waqoo.jp", password: "yokotsuka.waqoo", team_id: 7)
User.create!(email: "inoue@waqoo.jp", password: "waqoo.inc", team_id: 8)
User.create!(email: "soda@waqoo.jp", password: "soda.waqoo", team_id: 9)
User.create!(email: "fuchina@waqoo.jp", password: "fuchina.waqoo", team_id: 10)
User.create!(email: "kareshi@waqoo.jp", password: "kareshi.waqoo", team_id: 11)

[*'A'..'R'].each do |alphabet|
  MarketMaster.create!(market_name: "#{alphabet}")
end

(1..8).each do |n|
  (1..18).each do |m|
    if m == 18
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 1)
    else
      Market.create!(market_master_id: m,team_id: n,default_each_market_employee: 0)
    end
  end
end