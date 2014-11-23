# who = Album.create(:name => "My Generation", :price => 10, :release => "1965-12-03")
# doors = Album.create(name: "L.A. Woman", price: 15, release: "1971-04-19")
# led = Album.create(name: "Led Zeppelin IV", price: 12.5, release: "1971-11-08")

# Song.create(title: "Love Her Madly", album_id: doors.id)

# p FatSecret.recipe(84411)

# for i in 0..84500
#    if i % 10 == 0 then
#       p FatSecret.recipe(i)
#    end
# end
require 'fatsecret'

FatSecret.init('1bc2cc311bb24d56a24322272e790419', '42c47bc7053247e2a43adfb8db57e6fc')


if Recipe.all.length == 0
	for i in 1..1000
		# sleep(1.0/100.0)
		@recipe_info = FatSecret.recipe(i)
		if @recipe_info['error'] == nil
			@str_cate = ''
			@categories = @recipe_info['recipe']["recipe_categories"]["recipe_category"]
    		@categories.each do |name|
      			@str_cate << name["recipe_category_name"]
      			@str_cate << ', '
    		end
			Recipe.create(rcalorie:@recipe_info['recipe']["serving_sizes"]["serving"]["calories"], 
					rcategory:@str_cate, 
					rid:@recipe_info['recipe']["recipe_id"], 
					rname:@recipe_info['recipe']["recipe_name"], 
					rrating:@recipe_info['recipe']['rating'])
			p @recipe_info['recipe']["recipe_id"]
		end
	end
end
