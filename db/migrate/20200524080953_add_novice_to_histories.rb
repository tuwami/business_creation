class AddNoviceToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :novice, :integer
  end
end
