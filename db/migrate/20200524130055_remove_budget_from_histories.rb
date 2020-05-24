class RemoveBudgetFromHistories < ActiveRecord::Migration[5.2]
  def up
    remove_column :histories, :budget
  end

  def down
    add_column :histories, :budget, :integer
  end
end
