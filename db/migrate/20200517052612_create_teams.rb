class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :current_fund 
      t.integer :current_employee
      t.integer :current_novice
      t.timestamps
    end
  end
end
