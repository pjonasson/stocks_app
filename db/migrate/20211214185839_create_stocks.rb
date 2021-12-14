class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.string :last_sale
      t.decimal :net_change
      t.decimal :percent_change
      t.string :market_cap
      t.string :country
      t.integer :ipo_year
      t.integer :volume
      t.string :sector
      t.string :industry

      t.timestamps
    end
  end
end
