require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @item = Item.new(item_id: 2836, name: "Coarse Stone", description: "[empty]", stackable: 200, icon: "inv_stone_09", buy_price: 60, sell_price: 15, is_auctionable: true, item_level: 15)

  end

  test "should be valid" do
    assert @item.valid?
    malformed_item = Item.new
    assert_not malformed_item.valid?
  end
end
