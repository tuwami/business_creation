class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.float :current_fund, default: 100#100万単位
      t.integer :current_employee, default: 10
      t.integer :current_novice, default: 9
      t.float :current_profit, default: 0
      t.float :origin_fund, default: 100
      t.integer :investment_limit, default: 20

      t.timestamps
    end
  end
end
