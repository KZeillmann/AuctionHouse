class Item < ActiveRecord::Base
  validates :item_id, presence: true
  validates :name, presence: true
  validates :stackable, presence: true
  validates :icon, presence: true
  validates :buy_price, presence: true
  validates :sell_price, presence: true
  validates :is_auctionable, presence: true
  validates :item_level, presence: true
end
