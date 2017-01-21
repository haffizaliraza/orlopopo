# website_name = "https://www.daraz.pk/"
# agent = Mechanize.new                        # making a new instance of Mechanize
# page = agent.get(website_name)
# main_cat_li = page.search('li.menu-item')   #jitni b search aaye ga wo is mn save huta rhy ga
# main_cat_li.each do |x|
   
#     menu_item=x.search('span.nav-subTxt')
#      cat=x.search('div.categories')
       
#     cat.each do |y|
#         ro=y.search('a.category')
       
#         sub_cat=y.search('a.subcategory')
#         sub_cat.each do |z|
    
#             page_count = 1

#             next_page = agent.get(z['href'])
#             WebsiteLink.create(website: website_name , link: z["href"])
#             puts z["href"]

#             # if (next_page.search('ul.osh-pagination'))

#             # if next_page.at('.//div[@class="osh-pagination"]') == true then  # alternate code -->  # if page.at_css('div.errorMsg')

#             if next_page.at_css('ul.osh-pagination')
#                 begin

#                     pagination_tag = next_page.search('ul.osh-pagination')  #jitni b search aaye ga wo is mn save huta rhy ga

#                     tag_r = pagination_tag.search('li.item')

#                     tag_s = tag_r.search('a')
#                     for item in tag_s

#                         # aFile.puts "_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*"
#                         if item.text.match(/^(\d)+$/)  # this line will check if the string is an integer
                           
#                             x = item.text.to_i
#                             if x == page_count+1
#                                 page_count = x
#                                 next_page = agent.get(item["href"])
#                                 WebsiteLink.create(website: website_name , link: item["href"])
#                                 strLink = item["href"]
#                                 puts item["href"]
#                                 #db.execute "INSERT INTO linksTable(linkId,link) VALUES(count_id,strLink)"
#                                 #count_id += 1   
#                         end

#                         end

#                     end
                   
#                 end while x != page_count
#             end

#         end

#     end

# end









# agent = Mechanize.new                        # making a new instance of Mechanize

# WebsiteLink.find_each(batch_size: 100) do |website_link|
	
# 	page = agent.get(website_link.link)  

# 	#link = page.link_with(text: 'Phones')        # linking the page to a new page from the site



# 	collection= page.search('div.sku')            # searches the tag 'div' with class 'sku'

# 	# aFile = File.new("output.txt", "w")

# 	collection.each do |element|                # loop until last element in the collection
# 	  collection2=element.search('a.link')  
	  
# 	    collection2.each do |element2|
# 	         brand=element2.search('span.brand').text.strip        # this will pick the text from tag.class
# 	         name=element2.search('span.name').text.strip
# 	         pr=element2.at('span.price').text.strip

# 	         l = element2['href']
# 	         i = element2.at('img.lazy')['data-src']


# 	         puts pr
# 	         puts i
# 	         puts name
# 	        Product.create(name: name, compony_name: brand,
# 					price: pr, link:  l, image_link: i)
# 	     end
# 	end
# end




# 1000.times do |n|
# 	p_name = Faker::Commerce.product_name
# 	c_name = Faker::Company.name
# 	price =Faker::Commerce.price
# 	d_link = Faker::Internet.domain_name
	
# 	Product.create(name: p_name, compony_name: c_name,
# 		price: price, link: d_link ,
# 		image_link: Faker::Avatar.image )
# 		puts "product_name: #{p_name} "
# 		puts "compony_name: #{c_name}"
# 		puts "price: #{price}"
# 		puts "link: #{d_link}"
# 	end

100.times do |nn|
	rand_nm = rand(2..10)
	str = "{"
	rand_nm.times do |n|
		if n == 0	
			name = Product.find(rand(1393..3619)).name 
			str+='"' + "#{name}" +'"'
		else
			name = Product.find(rand(1393..3619)).name 
			str+=',"' +"#{name}" +'"'
		end
	end
	str += "}"

	FrequentItemSet.create(item: str)
	puts "#{nn}th Item set"
end


100.times do |x|
 session=rand(1..20	)
 name = Product.find(rand(1393..3619 	)).name 
  
   if Mango.exists?(session:session)

   	prof=Mango.find_by(session:session)
   	visitx = prof.visit
  	visitx += ",#{name}"
   	prof.update_attributes(visit:visitx)
 	puts "#{x} update"
   else
    Mango.create(session:session,visit:name ,expire:Time.now + 30*60)
    puts "#{x} create"

 	end


end




 #  n1="beer,doritos"
 #  n2="apple,cheese"
 #  n3="beer,doritos" 
 #  n4="apple,cheese" 
 #  n5="apple,cheese" 
 #  n6="apple,doritos"


 # Mango.create(session:001,visit:n1 ,expire:Time.now + 30*60)
 # Mango.create(session:002,visit:n2 ,expire:Time.now + 30*60)
 # Mango.create(session:003,visit:n3 ,expire:Time.now + 30*60)
 # Mango.create(session:004,visit:n4 ,expire:Time.now + 30*60)
 # Mango.create(session:005,visit:n5 ,expire:Time.now + 30*60)
 # Mango.create(session:006,visit:n6 ,expire:Time.now + 30*60)