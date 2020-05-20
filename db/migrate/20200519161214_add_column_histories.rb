class AddColumnHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :staffing, :integer
  end
end
