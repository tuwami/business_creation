class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :team, foreign_key: true
      t.integer :team_id
      t.float :fund,default: 0
      t.integer :employee,default: 0
      t.integer :novice,default: 0
      t.float :profit,default: 0
      t.float :earning,default: 0
      t.float :budget_earning,default:0
      t.float :balance_earning,default:0
      t.integer :recruiting,default: 0
      t.integer :each_market_employee,default: 0
      t.integer :investment_id
      t.integer :market_id

      t.timestamps
    end
  end
end
