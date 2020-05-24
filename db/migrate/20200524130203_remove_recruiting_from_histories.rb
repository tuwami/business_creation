class RemoveRecruitingFromHistories < ActiveRecord::Migration[5.2]
  def up
    remove_column :histories, :recruiting
  end

  def down
    add_column :histories, :recruiting, :integer
  end
end
