class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :current_fund, defalut: 1000000
      t.integer :current_employee, defalut: 0
      t.integer :current_novice, defalut: 1
      t.timestamps
    end
  end
end
