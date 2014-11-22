require 'food_info'
# https://github.com/whistler/Fatsecret
require 'fatsecret'

# require 'open-uri'
# require 'Nokogiri'

FatSecret.init('1bc2cc311bb24d56a24322272e790419', '42c47bc7053247e2a43adfb8db57e6fc')

# url_base = "http://www.weightlossresources.co.uk/calories/calorie_counter/chicken_meat.htm"
# page = Nokogiri::HTML(open("https://www.cia.gov/library/publications/the-world-factbook/print/textversion.html"))

# p content = page.css('div.content').text

# continent = country.css('div.region1 a').text
# name = country.css('span.region_name1').text
# geo_info = country.css('div#CollapsiblePanel1_Geo')
# texts = geo_info.css('div#field.category a')
# category = geo_info.css('div.category')

# FoodInfo.establish_connection(:fat_secret, :key => '1bc2cc311bb24d56a24322272e790419', :secret => '42c47bc7053247e2a43adfb8db57e6fc')

# p FatSecret.search_food('milk')
# puts
# p FatSecret.food(800)['food']
# puts
# p FatSecret.search_recipes('chicken',50)
# puts
p FatSecret.recipe(84411)

# for i in 0..84500
#    if i % 10 == 0 then
#       p FatSecret.recipe(i)
#    end
# end


# require 'dalli'
# client = Dalli::Client.new('localhost:3000')
# FoodInfo.establish_connection(:fat_secret, :key => '1bc2cc311bb24d56a24322272e790419', :secret => '42c47bc7053247e2a43adfb8db57e6fc', :cache => client)

# cheese = FoodInfo.search('cheese steak')

# print cheese.total_results

# def property(sym)
#   	# do some stuff
# end

# class SearchResults
#   include Enumerable
#   property :results,  :from => :food
#   property :page,     :from => :page_number
#   property :per_page, :from => :max_results
#   property :total_results

#   def initialize(*args)
    
#   end      
  
# end

# a = SearchResults.new()
# puts a.class