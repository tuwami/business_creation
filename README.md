# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

ruby -v
-2.5.1

rails
-5.2.4.2

tables一覧
teams:チームに関する情報を管理するテーブル
  id:ID
  name:チームの名前

users:ユーザーに関する情報を管理するテーブル
  email:ユーザーのEmail
  password:パスワード
  team_id:チームID

histories:全てのチームの全てのマーケットの投資の結果（資金・従業員数・無所属者数）を管理するテーブル
  id:ID
  market_id:マーケットID
  team_id:チームID
  fund:資金（チームの総資金）
  employee:従業員数（チームの抱える従業員数）
  novice:配属の決まっていない従業員数

markets:全てのマーケットの投資したもの（予算・配属・）
  id:ID
  market_master_id:マーケットマスターID
  team_id:チームID
  earning:マーケットからの売上
  recruiting:採用人数
  budget:予算
  assigning:配属人数

market_master:マーケットに関する全ての情報を管理するテーブル
  id:ID
  market_name:マーケットの名前

