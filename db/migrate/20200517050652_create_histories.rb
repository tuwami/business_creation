class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.references :team, foreign_key: true
      t.integer :team_id
      t.integer :market_id
      t.integer :fund
      t.integer :employee
      t.integer :budget
      t.integer :recruiting

      t.timestamps
    end
  end
end
