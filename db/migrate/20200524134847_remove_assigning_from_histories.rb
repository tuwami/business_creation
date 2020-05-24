class RemoveAssigningFromHistories < ActiveRecord::Migration[5.2]
  def up
    remove_column :histories, :assigning
  end

  def down
    add_column :histories, :assigning, :integer
  end
end
