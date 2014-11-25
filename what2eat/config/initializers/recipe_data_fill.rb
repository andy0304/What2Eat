# require 'fatsecret'

# FatSecret.init('1bc2cc311bb24d56a24322272e790419', '42c47bc7053247e2a43adfb8db57e6fc')


# if Recipe.all.length == 0
# 	for i in 1..70
# 		# sleep(1.0/100.0)
# 		@recipe_info = FatSecret.recipe(i)
# 		if @recipe_info['error'] == nil
# 			@str_cate = ''
# 			@categories = @recipe_info['recipe']["recipe_categories"]["recipe_category"]
#     		@categories.each do |name|
#       			@str_cate << name["recipe_category_name"]
#       			@str_cate << ', '
#     		end
# 			Recipe.create(rcalorie:@recipe_info['recipe']["serving_sizes"]["serving"]["calories"], 
# 					rcategory:@str_cate, 
# 					rid:@recipe_info['recipe']["recipe_id"], 
# 					rname:@recipe_info['recipe']["recipe_name"], 
# 					rrating:@recipe_info['recipe']['rating'])
# 			p @recipe_info['recipe']["recipe_id"]
# 		end
# 	end
# end
