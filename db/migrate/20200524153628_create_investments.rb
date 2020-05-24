class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.integer :market_id
      t.integer :team_id
      t.integer :budeget
      t.integer :assigning
      t.timestamps
    end
  end
end
