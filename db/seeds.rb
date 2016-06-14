# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Auction.create([{auc_id: 1083008909, item: 2836, owner: "Healzabit", owner_realm: "Stormrage", bid: 28999, buyout: 32999, quantity: 3, time_left: "MEDIUM"}])

Item.create([{item_id: 2836, name: "Coarse Stone", description: "", stackable: 200, icon: "inv_stone_09", buy_price: 60, sell_price: 15, is_auctionable: true, item_level: 15}])
