puts "start seed"
  Listing.destroy_all
  User.destroy_all
  Booking.destroy_all
puts "db's dropped"


######### users ########################################################

john  = User.create(email: "john@gmail.com", password: "passwordjohn")
cameron = User.create(email: "cameron@gmail.com", password: "passwordcameron")
bill = User.create(email: "bill@gmail.com", password: "passwordbill")
angela = User.create(email: "angela@gmail.com", password: "passwordangela")
hillary = User.create(email: "hillary@gmail.com", password: "passwordhillary")
joanna = User.create(email: "joanna@gmail.com", password: "passwordjoanna")

# Listings ############################################################
# Rice cooker one
rice_cooker_one = Listing.new(title: "OBH Rice Cooker", description: "Great OBH Nordic Rice Cooker", price: 40, address: "Ahornsgade 15")
rice_cooker_one.user = john
rice_cooker_one.save

# Rice cooker two
rice_cooker_two = Listing.new(title: " A rice Cooker from Hamilton", description: "Hamilton Beach Rice Cooker in good standard", price: 80, address: "Bartholinsgade 7")
rice_cooker_two.user = cameron
rice_cooker_two.save

# Rice cooker one
rice_cooker_three = Listing.new(title: "Rice Cooker - Zojirushi ", description: "Never used Zojirushi NP-HCC10XH Rice cooker. As good as new ", price: 120, address: "Skindergade 13")
rice_cooker_three.user = bill
rice_cooker_three.save

# BBQ grill one
bbq_grill_one = Listing.new(title: "Weber grill. Come and rent", description: "Weber 10020 Smokey Joe 14-Inch Portable Grill - used for two years, works well", price: 100, address: "Kapelvej 11")
bbq_grill_one.user = angela
bbq_grill_one.save

# BBQ grill two
bbq_grill_two = Listing.new(title: "Coleman grill. Great for camping", description: "Easy and portable grill ", price: 200, address: "Blegdamsvej 10")
bbq_grill_two.user = hillary
bbq_grill_two.save

# waffle iron
waffle_iron = Listing.new(title: "Presto waffle iron for rent", description: "Easy to use waffle iron for rent, good standard", price: 50, address: "Stengade 19")
waffle_iron.user = joanna
waffle_iron.save

# paella_pan
paella_pan = Listing.new(title: "Castavia paella pan", description: "Complete Paella Kit for up to 13 Servings", price: 200, address: "Sankt Hans Gade 2")
paella_pan.user = john
paella_pan.save

# wok
wok = Listing.new(title: "Wok for rent - Helen Chen's Asian Kitchen", description: "Helen Chen's Asian Kitchen Nonstick Wok Stir Fry Excalibur Pan, 12-Inch for rent - used only a couple of times", price: 50, address: "Nørre Søgade 4")
wok.user = bill
wok.save

# blender one
blender_one = Listing.new(title: "Top Oster Pro 1200 Blender!!", description: "Rent my blender - great for making smoothies", price: 100, address: "Sjællandsgade 16")
blender_one.user = joanna
blender_one.save

# blender two
blender_two = Listing.new(title: "easy and simple to use basic blender", description: "Purple Hamilton Beach Personal Single Serve Blender. Basic blender that works for most tasks", price: 100, address: "Hans Kirks Vej 4")
blender_two.user = angela
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



