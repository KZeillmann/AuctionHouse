class MasterMigration < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :name
      t.string :description
      t.integer :stackable
      t.string :icon
      t.integer :buy_price
      t.integer :sell_price
      t.boolean :is_auctionable
      t.integer :item_level
    end

    create_table :auctions do |t|
      t.integer :auc_id
      t.integer :item
      t.string :owner
      t.string :owner_realm
      t.integer :bid
      t.integer :buyout
      t.integer :quantity
      t.string :time_left
    end
  end
end
