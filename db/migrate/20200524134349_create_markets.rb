class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.integer :market_master_id
      t.integer :team_id
      t.float :market_earning, default: 0
      t.float :market_budget_earning, default:0
      t.float :market_balance_earning, default:0
      t.integer :market_recruiting, default: 0
      t.integer :market_employee ,default: 0
      t.float :balance, default: 0 #残高
      t.integer :default_each_market_employee, default: 0

      t.timestamps
    end
  end
end
