class Auction < ActiveRecord::Base
  validates :auc_id, presence: true
  validates :item, presence: true
  validates :owner, presence: true
  validates :owner_realm, presence: true
  validates :bid, presence: true
  validates :buyout, presence: true
  validates :quantity, presence: true
  validates :time_left, presence: true

end
