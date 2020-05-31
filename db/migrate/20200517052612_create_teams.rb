class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :current_fund, default: 100#100万単位
      t.integer :current_employee, default: 5
      t.integer :current_novice, default: 5
      t.timestamps
    end
  end
end
