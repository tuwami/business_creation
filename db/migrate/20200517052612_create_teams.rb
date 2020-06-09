class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :current_fund, default: 100000#100万単位
      t.integer :current_employee, default: 100018
      t.integer :current_novice, default: 100000
      t.timestamps
    end
  end
end
