require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'
require './lib/market'

class MarketTest < Minitest::Test

  def setup
    @market = Market.new("South Pearl Street Farmers Market")
  end

  def test_it_exists
    assert_instance_of Market, @market
  end
end

#
# market.name
# #=> "South Pearl Street Farmers Market"
#
# market.vendors
# #=> []
#
# vendor1 = Vendor.new("Rocky Mountain Fresh")
# #=> #<Vendor:0x00007fe1348a1160...>
#
# item1 = Item.new({name: 'Peach', price: "$0.75"})
# #=> #<Item:0x007f9c56740d48...>
#
# item2 = Item.new({name: 'Tomato', price: "$0.50"})
# #=> #<Item:0x007f9c565c0ce8...>
#
# item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
# #=> #<Item:0x007f9c562a5f18...>
#
# item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
# #=> #<Item:0x007f9c56343038...>
#
# vendor1.stock(item1, 35)
#
# vendor1.stock(item2, 7)
#
# vendor2 = Vendor.new("Ba-Nom-a-Nom")
# #=> #<Vendor:0x00007fe1349bed40...>
#
# vendor2.stock(item4, 50)
#
# vendor2.stock(item3, 25)
#
# vendor3 = Vendor.new("Palisade Peach Shack")
# #=> #<Vendor:0x00007fe134910650...>
#
# vendor3.stock(item1, 65)
#
# market.add_vendor(vendor1)
#
# market.add_vendor(vendor2)
#
# market.add_vendor(vendor3)
#
# market.vendors
# #=> [#<Vendor:0x00007fe1348a1160...>, #<Vendor:0x00007fe1349bed40...>, #<Vendor:0x00007fe134910650...>]
#
# market.vendor_names
# #=> ["Rocky Mountain Fresh", "Ba-Nom-a-Nom", "Palisade Peach Shack"]
#
# market.vendors_that_sell(item1)
# #=> [#<Vendor:0x00007fe1348a1160...>, #<Vendor:0x00007fe134910650...>]
#
# market.vendors_that_sell(item4)
# #=> [#<Vendor:0x00007fe1349bed40...>]
#
# vendor1.potential_revenue
# #=> 29.75
#
# vendor2.potential_revenue
# #=> 345.00
#
# vendor3.potential_revenue
# #=> 48.75
