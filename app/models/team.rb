class Team < ApplicationRecord
  has_many :markets, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :investments
  has_many :users
  
  validates :name, presence: true
  
  public
    EACH_MARKET_INFORMATION_A = ['A事業部', '人事採用を担当する部署']
    EACH_MARKET_INFORMATION_B = ['B事業部', 'メディアで人材紹介し、企業から紹介手数料']
    EACH_MARKET_INFORMATION_C = ['C事業部', '食品を小売店に卸売り']
    EACH_MARKET_INFORMATION_D = ['D事業部', 'テレビCMの企画提案']
    EACH_MARKET_INFORMATION_E = ['E事業部', '周辺で唯一のスーパーマーケットを運営']
    EACH_MARKET_INFORMATION_F = ['F事業部', 'ECモールの運営し、出店店舗からの定額出店手数料']
    EACH_MARKET_INFORMATION_G = ['G事業部', 'メディアの出版・定額定期販売']
    EACH_MARKET_INFORMATION_H = ['H事業部', '化粧品を販売代理店に卸売り']
    EACH_MARKET_INFORMATION_I = ['I事業部', 'テーマパーク運営し、入場者からの入場料']
    EACH_MARKET_INFORMATION_J = ['J事業部', 'インターネットゲームの開発・販売']
    EACH_MARKET_INFORMATION_K = ['K事業部', '自動車の製造・販売']
    EACH_MARKET_INFORMATION_L = ['L事業部', 'セキュリティサービスの提供し、企業から定額利用料']
    EACH_MARKET_INFORMATION_M = ['M事業部', 'インターネット回線の提供し、利用者から定額利用料']
    EACH_MARKET_INFORMATION_N = ['N事業部', 'ECカートサービスを開発・提供し、企業から定額利用料']
    EACH_MARKET_INFORMATION_O = ['O事業部', '印刷代行サービスを提供し、企業から印刷手数料']
    EACH_MARKET_INFORMATION_P = ['P事業部', '原料のトレーディングをし、企業から手数料']
    EACH_MARKET_INFORMATION_Q = ['Q事業部', '不動産仲介をし、企業から仲介手数料']
    EACH_MARKET_INFORMATION_R = ['Q事業部', '部品を自社工場で製造し、継続的な関係性の加工メーカーに卸売り']
    MARKET_INFORMATION = [EACH_MARKET_INFORMATION_A, EACH_MARKET_INFORMATION_B, EACH_MARKET_INFORMATION_C,
                          EACH_MARKET_INFORMATION_D, EACH_MARKET_INFORMATION_E, EACH_MARKET_INFORMATION_F,
                          EACH_MARKET_INFORMATION_G, EACH_MARKET_INFORMATION_H, EACH_MARKET_INFORMATION_I,
                          EACH_MARKET_INFORMATION_J, EACH_MARKET_INFORMATION_K, EACH_MARKET_INFORMATION_L,
                          EACH_MARKET_INFORMATION_M, EACH_MARKET_INFORMATION_N, EACH_MARKET_INFORMATION_O,
                          EACH_MARKET_INFORMATION_P, EACH_MARKET_INFORMATION_Q, EACH_MARKET_INFORMATION_R]
end
