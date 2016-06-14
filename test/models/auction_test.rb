require 'test_helper'

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @auction = Auction.new(auc_id: 1083008909, item: 2836, owner: "Healzabit", owner_realm: "Stormrage", bid: 28999, buyout: 32999, quantity: 3, time_left: "MEDIUM")
  end

  test "should be valid" do
    assert @auction.valid?
    malformed_auction = Auction.new
    assert_not malformed_auction.valid?
  end

end
