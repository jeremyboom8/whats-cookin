puts "start seed"
  User.destroy_all
  Listing.destroy_all
  Booking.destroy_all
puts "db's dropped"


######### users ########################################################

john  = User.create(first_name: "Johnny", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "john@gmail.com", password: "passwordjohn")
cameron = User.create(first_name: "Cameron", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "cameron@gmail.com", password: "passwordcameron")
bill = User.create(first_name: "Bill", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "bill@gmail.com", password: "passwordbill")
angela = User.create(first_name: "Angela", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "angela@gmail.com", password: "passwordangela")
hillary = User.create(first_name: "Hillary", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "hillary@gmail.com", password: "passwordhillary")
joanna = User.create(first_name: "Joanna", last_name: "Smith", facebook_picture_url: "http://r.fod4.com/c=sq/s=w200,pd1/o=80/http://p.fod4.com/p/channels/pzwrl/profile/s=w1200/o=95/m9oNs9QJQIi9QbUoNTvH_john-oliver-hbo.jpg", email: "joanna@gmail.com", password: "passwordjoanna")

# Listings ############################################################





# Rice cooker one
url = "https://images-na.ssl-images-amazon.com/images/I/51SnSP8WHSL._SL1181_.jpg"
rice_cooker_one = Listing.new(title: "OBH Rice Cooker", description: "Great OBH Nordic Rice Cooker", price: 40, address: "Ahornsgade 15")
rice_cooker_one.user = john
rice_cooker_one.photo_url = url
rice_cooker_one.save

# Rice cooker two
url = "https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/102/10200/10200141.jpg"
rice_cooker_two = Listing.new(title: " Rice cooker from Hamilton", description: "Hamilton Beach Rice Cooker in good standard", price: 80, address: "Bartholinsgade 7")
rice_cooker_two.user = cameron
rice_cooker_two.photo_url = url
rice_cooker_two.save

# Rice cooker three
url = "http://www.momorice.com/wp-content/uploads/2013/11/zojirushi_ns-lac05_solo.jpg"
rice_cooker_three = Listing.new(title: "Rice Cooker - Zojirushi ", description: "Never used Zojirushi NP-HCC10XH Rice cooker. As good as new ", price: 120, address: "Skindergade 13")
rice_cooker_three.user = bill
rice_cooker_three.photo_url = url
rice_cooker_three.save

# BBQ grill one
url = "https://i5.walmartimages.ca/images/Enlarge/025/303/999999-77924025303.jpg"
bbq_grill_one = Listing.new(title: "Weber grill. Come and rent", description: "Weber 10020 Smokey Joe 14-Inch Portable Grill - used for two years, works well", price: 100, address: "Kapelvej 11")
bbq_grill_one.user = angela
bbq_grill_one.photo_url = url
bbq_grill_one.save

# BBQ grill two
url = "https://images3.campingworld.com/CampingWorld/images/products/3000/1000x1000/35188n.jpg"
bbq_grill_two = Listing.new(title: "Coleman grill. Great for camping", description: "Easy and portable grill ", price: 200, address: "Blegdamsvej 10")
bbq_grill_two.user = hillary
bbq_grill_two.photo_url = url
bbq_grill_two.save

# waffle iron
url = "http://kitchen-review.com/wp-content/uploads/2015/09/Presto-FlipSide-Belgian-Waffle-Maker.jpg"
waffle_iron = Listing.new(title: "Presto waffle iron for rent", description: "Easy to use waffle iron for rent, good standard", price: 50, address: "Stengade 19")
waffle_iron.user = joanna
waffle_iron.photo_url = url
waffle_iron.save

# paella_pan
url = "https://cdn1.everten.com.au/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/a/paella-pan-cerise.1478243907.jpg"
paella_pan = Listing.new(title: "Castavia paella pan", description: "Complete Paella Kit for up to 13 Servings", price: 200, address: "Sankt Hans Gade 2")
paella_pan.user = john
paella_pan.photo_url = url
paella_pan.save

# wok
url = "https://images-na.ssl-images-amazon.com/images/I/71iHEM-grhL._SL1500_.jpg"
wok = Listing.new(title: "Wok for rent - Helen Chen's Asian Kitchen", description: "Helen Chen's Asian Kitchen Nonstick Wok Stir Fry Excalibur Pan, 12-Inch for rent - used only a couple of times", price: 50, address: "Nørre Søgade 4")
wok.user = bill
wok.photo_url = url
wok.save

# blender one
url = "https://www.oster.com/on/demandware.static/-/Sites-master-catalog/default/dwd19d3338/images/highres/BLSTMB-CBG-000-1a.jpg"
blender_one = Listing.new(title: "Top Oster Pro 1200 Blender!!", description: "Rent my blender - great for making smoothies", price: 100, address: "Sjællandsgade 16")
blender_one.user = joanna
blender_one.photo_url = url
blender_one.save

# blender two
url = "https://images-na.ssl-images-amazon.com/images/I/71-Xr5c8JuL._SL1500_.jpg"
blender_two = Listing.new(title: "Easy and simple to use basic blender", description: "Purple Hamilton Beach Personal Single Serve Blender. Basic blender that works for most tasks", price: 100, address: "Hans Kirks Vej 4")
blender_two.user = angela
blender_two.photo_url = url
blender_two.save


########## bookings #########################################
booking_one = Booking.new(status: "pending")
booking_one.listing = blender_one
booking_one.user = john
booking_one.booking_date = Date.today + rand(150)
booking_one.save

booking_two = Booking.new(status: "rejected")
booking_two.listing = bbq_grill_two
booking_two.user = john
booking_two.booking_date = Date.today + rand(150)
booking_two.save

booking_third = Booking.new(status: "approved")
booking_third.listing = rice_cooker_two
booking_third.user = bill
booking_third.booking_date = Date.today + rand(150)
booking_third.save

booking_fourth = Booking.new(status: "approved")
booking_fourth.listing = wok
booking_fourth.user = angela
booking_fourth.booking_date = Date.today + rand(150)
booking_fourth.save

puts "seeded complete"



