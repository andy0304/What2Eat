require 'food_info'
FoodInfo.establish_connection(:fat_secret, :key => '1bc2cc311bb24d56a24322272e790419', :secret => '42c47bc7053247e2a43adfb8db57e6fc')

# require 'dalli'
# client = Dalli::Client.new('localhost:3000')
# FoodInfo.establish_connection(:fat_secret, :key => '1bc2cc311bb24d56a24322272e790419', :secret => '42c47bc7053247e2a43adfb8db57e6fc', :cache => client)

cheese = FoodInfo.search('cheese')
# print cheese.total_results