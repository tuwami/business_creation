class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.integer :market_master_id
      t.integer :team_id
      t.integer :earning
      t.integer :recruiting
      t.integer :budget
      t.integer :assigning

      t.timestamps
    end
  end
end
