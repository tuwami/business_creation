class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.integer :market_master_id
      t.integer :team_id
      t.integer :earning, default: 0
      t.integer :recruiting, default: 0
      t.integer :market_employee,default: 0
      t.integer :market
      t.integer :balance, default: 0 #残高
      t.timestamps
    end
  end
end
