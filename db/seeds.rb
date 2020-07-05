# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Apple
(1..4).each do |num|
  Team.create!(name: "Apple,Inc.", current_fund: 124, origin_fund: 124, investment_limit: 5*num)
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
  Team.create!(name: "Dragonfruit,Inc.", current_fund: 124, origin_fund: 124, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "Nanaka Aoki", email: "aokinanaka@waqoo.jp", password: "aokinanaka.waqoo")
User.create!(name: "Ryotaro Okamoto", email: "okamotoryotaro@waqoo.jp", password: "okamotoryotaro.waqoo")
User.create!(name: "Yuta Ono", email: "onoyuta@waqoo.jp", password: "onoyuta.waqoo")
User.create!(name: "Yuto Tsuchie", email: "tsuchieyuto@waqoo.jp", password: "tsuchieyuto.waqoo")

#Banana
User.create!(name: "Kazuya Iwata", email: "iwatakazuya@waqoo.jp", password: "iwatakazuya.waqoo")
User.create!(name: "Katsuki Sudo", email: "sudokatsuki@waqoo.jp", password: "sudokatsuki.waqoo")
User.create!(name: "Ryuji Masuda", email: "masudaryuji@waqoo.jp", password: "masudaryuji.waqoo")
User.create!(name: "Kyomi Yuki", email: "yukikyomi@waqoo.jp", password: "yukikyomi.waqoo")

#Cocnut
User.create!(name: "Taiga Itsukaichi", email: "itsukaichitaiga@waqoo.jp", password: "itsukaichitaiga.waqoo")
User.create!(name: "Ryuto Ito", email: "itoryuto@waqoo.jp", password: "itoryuto.waqoo")
User.create!(name: "Nana Matsura", email: "matsuranana@waqoo.jp", password: "matsuranana.waqoo")
User.create!(name: "Seita Matsushita", email: "matsushitaseita@waqoo.jp", password: "matsushitaseita.waqoo")


#Dragonfruit
User.create!(name: "Fumihiro Ohashi", email: "ohashifumihiro@waqoo.jp", password: "ohashifumihiro.waqoo")
User.create!(name: "Kanna Teramoto", email: "teramotokanna@waqoo.jp", password: "teramotokanna.waqoo")
User.create!(name: "Ryota Watanuki", email: "watanukiryota@waqoo.jp", password: "watanukiryota.waqoo")
User.create!(name: "USER", email: "user@waqoo.jp", password: "user.waqoo")

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
