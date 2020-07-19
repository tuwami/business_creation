# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Apple
(1..4).each do |num|
  Team.create!(name: "Apple,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Banana
(1..4).each do |num|
  Team.create!(name: "Banana,Inc.", current_fund: 100, origin_fund: 100, investment_limit: 5*num)
end
#Coconut
(1..4).each do |num|
  Team.create!(name: "Coconut,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Dragonfruit
(1..4).each do |num|
  Team.create!(name: "Dragonfruit,Inc.", current_fund: 108, origin_fund: 108, investment_limit: 5*num)
end

Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "Risa Okamoto", email: "risaokamoto@waqoo.jp", password: "risaokamoto.waqoo")
User.create!(name: "So Kuroki", email: "sokuroki@waqoo.jp", password: "sokuroki.waqoo")
User.create!(name: "Shota Kobayashi", email: "shotakobayashi@waqoo.jp", password: "shotakobayashi.waqoo")
User.create!(name: "Shintaro Shimoda", email: "shintaroshimoda@waqoo.jp", password: "shintaroshimoda.waqoo")

#Banana
User.create!(name: "Haruto Asahina", email: "harutoasahina@waqoo.jp", password: "harutoasahina.waqoo")
User.create!(name: "Yuki Ishikawa", email: "yukiishikawa@waqoo.jp", password: "yukiishikawa.waqoo")
User.create!(name: "Ayu Koide", email: "ayukoide@waqoo.jp", password: "ayukoide.waqoo")
User.create!(name: "Saki Maezawa", email: "sakimaezawa@waqoo.jp", password: "sakimaezawa.waqoo")

#Cocnut
User.create!(name: "Tomoki Sato", email: "tomokisato@waqoo.jp", password: "tomokisato.waqoo")
User.create!(name: "Taku Teshima", email: "takuteshima@waqoo.jp", password: "takuteshima.waqoo")
User.create!(name: "Akari Mukaida", email: "akarimukaida@waqoo.jp", password: "akarimukaida.waqoo")
User.create!(name: "Shinji Wada", email: "shinjiwada@waqoo.jp", password: "shinjiwada.waqoo")

#Dragonfruit
User.create!(name: "Satoshi Takahara", email: "satoshitakahara@waqoo.jp", password: "satoshitakahara.waqoo")
User.create!(name: "Yuki Terahata", email: "yukiterahata@waqoo.jp", password: "yukiterahata.waqoo")
User.create!(name: "Mizuki Nakazawa", email: "mizukinakazawa@waqoo.jp", password: "mizukinakazawa.waqoo")
User.create!(name: "Misaki Yoshioka", email: "misakiyoshioka@waqoo.jp", password: "misakiyoshioka.waqoo")

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
