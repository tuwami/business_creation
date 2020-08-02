class CreateMarketMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :market_masters do |t|
      t.string :market_name
      t.float :market_growth_index
      t.float :capital_intensive_index
      t.float :labor_intensive_index
      t.float :sales_retention_index

      t.timestamps
    end
  end
end
