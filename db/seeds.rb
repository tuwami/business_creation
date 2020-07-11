# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Apple
(1..4).each do |num|
  Team.create!(name: "Apple,Inc.", current_fund: 104, origin_fund: 104, investment_limit: 5*num)
end
#Banana
(1..4).each do |num|
  Team.create!(name: "Banana,Inc.", current_fund: 124, origin_fund: 124, investment_limit: 5*num)
end
#Coconut
(1..4).each do |num|
  Team.create!(name: "Coconut,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end


Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "Mizuki Saura", email: "mizukisaura@waqoo.jp", password: "mizukisaura.waqoo")
User.create!(name: "Hisaki Shinohara", email: "hisakishinohara@waqoo.jp", password: "hisakishinohara.waqoo")
User.create!(name: "Takuma Fujiwara", email: "takumafujiwara@waqoo.jp", password: "takumafujiwara.waqoo")
User.create!(name: "USER1", email: "user1@waqoo.jp", password: "user1.waqoo")

#Banana
User.create!(name: "Yuta Ito", email: "yutaito@waqoo.jp", password: "yutaito.waqoo")
User.create!(name: "Saki Inukai", email: "sakiinukai@waqoo.jp", password: "sakiinukai.waqoo")
User.create!(name: "Kim DoHoon", email: "kimdohoon@waqoo.jp", password: "kimdohoon.waqoo")
User.create!(name: "Shunya Watanabe", email: "shunyawatanabe@waqoo.jp", password: "shunyawatanabe.waqoo")

#Cocnut
User.create!(name: "Reira Suzuki", email: "reirasuzuki@waqoo.jp", password: "reirasuzuki.waqoo")
User.create!(name: "Keima Nagao", email: "keimanagao@waqoo.jp", password: "keimanagao.waqoo")
User.create!(name: "Takuma Matsunaga", email: "takumamatsunaga@waqoo.jp", password: "takumamatsunaga.waqoo")
User.create!(name: "USER2", email: "user2@waqoo.jp", password: "user2.waqoo")

#Dragonfruit


#チームの塊
(1..3).each do |l|
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
