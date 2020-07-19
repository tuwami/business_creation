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
  Team.create!(name: "Banana,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Coconut
(1..4).each do |num|
  Team.create!(name: "Coconut,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Dragonfruit
(1..4).each do |num|
  Team.create!(name: "Dragonfruit,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Elderberry
(1..4).each do |num|
  Team.create!(name: "Elderberry,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Fig
(1..4).each do |num|
  Team.create!(name: "Fig,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Grape
(1..4).each do |num|
  Team.create!(name: "Grape,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Honeydew
(1..4).each do |num|
  Team.create!(name: "Honeydew,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Italian Plum
(1..4).each do |num|
  Team.create!(name: "Italian Plum,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Jujube
(1..4).each do |num|
  Team.create!(name: "Jujube,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Kiwi
(1..4).each do |num|
  Team.create!(name: "Kiwi,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Lemon
(1..4).each do |num|
  Team.create!(name: "Lemon,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Muscat
(1..4).each do |num|
  Team.create!(name: "Muscat,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Nectarine
(1..4).each do |num|
  Team.create!(name: "Nectarine,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Orange
(1..4).each do |num|
  Team.create!(name: "Orange,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Peach
(1..4).each do |num|
  Team.create!(name: "Peach,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end
#Quince
(1..4).each do |num|
  Team.create!(name: "Quince,Inc.", current_fund: 120, origin_fund: 120, investment_limit: 5*num)
end



Admin.create!(email: "admin@waqoo.jp", password: "adminadmin")
Admin.create!(email: "aa@aa", password: "pppppp")

#Apple
User.create!(name: "a1", email: "a1@waqoo.jp", password: "a1.waqoo")
User.create!(name: "a2", email: "a2@waqoo.jp", password: "a2.waqoo")
User.create!(name: "a3", email: "a3@waqoo.jp", password: "a3.waqoo")
User.create!(name: "a4", email: "a4@waqoo.jp", password: "a4.waqoo")

#Banana
User.create!(name: "b1", email: "b1@waqoo.jp", password: "b1.waqoo")
User.create!(name: "b2", email: "b2@waqoo.jp", password: "b2.waqoo")
User.create!(name: "b3", email: "b3@waqoo.jp", password: "b3.waqoo")
User.create!(name: "b4", email: "b4@waqoo.jp", password: "b4.waqoo")

#Cocnut
User.create!(name: "c1", email: "c1@waqoo.jp", password: "c1.waqoo")
User.create!(name: "c2", email: "c2@waqoo.jp", password: "c2.waqoo")
User.create!(name: "c3", email: "c3@waqoo.jp", password: "c3.waqoo")
User.create!(name: "c4", email: "c4@waqoo.jp", password: "c4.waqoo")

#Dragonfruit
User.create!(name: "d1", email: "d1@waqoo.jp", password: "d1.waqoo")
User.create!(name: "d2", email: "d2@waqoo.jp", password: "d2.waqoo")
User.create!(name: "d3", email: "d3@waqoo.jp", password: "d3.waqoo")
User.create!(name: "d4", email: "d4@waqoo.jp", password: "d4.waqoo")

#Elderberry
User.create!(name: "e1", email: "e1@waqoo.jp", password: "e1.waqoo")
User.create!(name: "e2", email: "e2@waqoo.jp", password: "e2.waqoo")
User.create!(name: "e3", email: "e3@waqoo.jp", password: "e3.waqoo")
User.create!(name: "e4", email: "e4@waqoo.jp", password: "e4.waqoo")


#Fig
User.create!(name: "f1", email: "f1@waqoo.jp", password: "f1.waqoo")
User.create!(name: "f2", email: "f2@waqoo.jp", password: "f2.waqoo")
User.create!(name: "f3", email: "f3@waqoo.jp", password: "f3.waqoo")
User.create!(name: "f4", email: "f4@waqoo.jp", password: "f4.waqoo")

#Grape
User.create!(name: "g1", email: "g1@waqoo.jp", password: "g1.waqoo")
User.create!(name: "g2", email: "g2@waqoo.jp", password: "g2.waqoo")
User.create!(name: "g3", email: "g3@waqoo.jp", password: "g3.waqoo")
User.create!(name: "g4", email: "g4@waqoo.jp", password: "g4.waqoo")


#Honeydew
User.create!(name: "h1", email: "h1@waqoo.jp", password: "h1.waqoo")
User.create!(name: "h2", email: "h2@waqoo.jp", password: "h2.waqoo")
User.create!(name: "h3", email: "h3@waqoo.jp", password: "h3.waqoo")
User.create!(name: "h4", email: "h4@waqoo.jp", password: "h4.waqoo")


#Italian Plum
User.create!(name: "i1", email: "i1@waqoo.jp", password: "i1.waqoo")
User.create!(name: "i2", email: "i2@waqoo.jp", password: "i2.waqoo")
User.create!(name: "i3", email: "i3@waqoo.jp", password: "i3.waqoo")
User.create!(name: "i4", email: "i4@waqoo.jp", password: "i4.waqoo")


#Jujube
User.create!(name: "j1", email: "j1@waqoo.jp", password: "j1.waqoo")
User.create!(name: "j2", email: "j2@waqoo.jp", password: "j2.waqoo")
User.create!(name: "j3", email: "j3@waqoo.jp", password: "j3.waqoo")
User.create!(name: "j4", email: "j4@waqoo.jp", password: "j4.waqoo")


#Kiwi
User.create!(name: "k1", email: "k1@waqoo.jp", password: "k1.waqoo")
User.create!(name: "k2", email: "k2@waqoo.jp", password: "k2.waqoo")
User.create!(name: "k3", email: "k3@waqoo.jp", password: "k3.waqoo")
User.create!(name: "k4", email: "k4@waqoo.jp", password: "k4.waqoo")


#Lemon
User.create!(name: "l1", email: "l1@waqoo.jp", password: "l1.waqoo")
User.create!(name: "l2", email: "l2@waqoo.jp", password: "l2.waqoo")
User.create!(name: "l3", email: "l3@waqoo.jp", password: "l3.waqoo")
User.create!(name: "l4", email: "l4@waqoo.jp", password: "l4.waqoo")


#Muscat
User.create!(name: "m1", email: "m1@waqoo.jp", password: "m1.waqoo")
User.create!(name: "m2", email: "m2@waqoo.jp", password: "m2.waqoo")
User.create!(name: "m3", email: "m3@waqoo.jp", password: "m3.waqoo")
User.create!(name: "m4", email: "m4@waqoo.jp", password: "m4.waqoo")


#Nectarine
User.create!(name: "n1", email: "n1@waqoo.jp", password: "n1.waqoo")
User.create!(name: "n2", email: "n2@waqoo.jp", password: "n2.waqoo")
User.create!(name: "n3", email: "n3@waqoo.jp", password: "n3.waqoo")
User.create!(name: "n4", email: "n4@waqoo.jp", password: "n4.waqoo")


#Orange
User.create!(name: "o1", email: "o1@waqoo.jp", password: "o1.waqoo")
User.create!(name: "o2", email: "o2@waqoo.jp", password: "o2.waqoo")
User.create!(name: "o3", email: "o3@waqoo.jp", password: "o3.waqoo")
User.create!(name: "o4", email: "o4@waqoo.jp", password: "o4.waqoo")

#Peach
User.create!(name: "p1", email: "p1@waqoo.jp", password: "p1.waqoo")
User.create!(name: "p2", email: "p2@waqoo.jp", password: "p2.waqoo")
User.create!(name: "p3", email: "p3@waqoo.jp", password: "p3.waqoo")
User.create!(name: "p4", email: "p4@waqoo.jp", password: "p4.waqoo")

#Quince
User.create!(name: "q1", email: "q1@waqoo.jp", password: "q1.waqoo")
User.create!(name: "q2", email: "q2@waqoo.jp", password: "q2.waqoo")
User.create!(name: "q3", email: "q3@waqoo.jp", password: "q3.waqoo")
User.create!(name: "q4", email: "q4@waqoo.jp", password: "q4.waqoo")


#チームの塊
(1..17).each do |l|
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
