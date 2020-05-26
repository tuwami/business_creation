class CreateMarketMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :market_masters do |t|
      t.string :market_name

      t.timestamps
    end
  end
end
