class RenameStaffingColumnToHistories < ActiveRecord::Migration[5.2]
  def change
    rename_column :histories, :staffing, :assigning
  end
end
