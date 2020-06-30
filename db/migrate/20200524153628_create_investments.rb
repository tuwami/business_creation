class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.integer :market_id
      t.integer :team_id
      t.integer :budget,default: 0
      t.integer :assigning,default: 0
      t.string :description

      t.timestamps
    end
  end
end
