# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	params = { category: '1',
	      city: 'toronto',
	      country: 'CA',
	      status: 'upcoming',
	      format: 'json',
	      page: '20'}
	    meetup_api = MeetupApi.new
	    events = meetup_api.open_events(params)
	    result = events['results'].first
	    event1 = Event.create(
	    	name: result['name'], 
	    	# address: [result['venue']['address_1'], result['venue']['city']], 
	    	address: "220 King Street West, Toronto, ON",
	    	eventtime: result['time'], 
	    	phone: result['venue']['phone'], 
	    	# cost: result['fee'], 
	    	link: result['event_url'], 
	    	photo: result['photo_url'],
	    	category: "Art",
	    	grpsize: "Group",
	    	cost: "Free"
	    	)


agame= Event.create(name: "A-Game Cafe", category: "Art", grpsize: "Group", address: "240 Queen Street W 2nd Floor Toronto, ON M5V 1Z7 Canada", phone: "(416) 971-4263", cost: "$", link: "www.agamecafe.ca", photo: "http://www.yelp.com/biz_photos/a-game-cafe-toronto?select=WWmRGoZ6dVuZfqhwgIrr7g", actualcost: "10$-15$" ,description:"GREAT GAMES. DELICIOUS REFRESHMENTS. FRIENDLY SERVICE. You may find yourself stopping a pandemic from wiping out the world, gathering clues to solve the murder of Colonel Mustard, settling down and building developments in Catan, or conquering the world one continent at a time with your sharp military tactics.")
cn = Event.create(name: "CN Tower", category: "Art", grpsize: "Couple", address: "301 Front Street W Toronto, ON M5V 2T6 Canada", phone: "(416) 868-6937", cost: "$$", link: "http://www.cntower.ca/intro.html", photo: "http://www.yelp.com/biz_photos/cn-tower-toronto?select=yXxeKAvvjIhFXIu30RFi9g", actualcost: "20$-30$", description:"Canadians and tourists from around the world have made the trip to Toronto to celebrate this marvel of civil engineering. Besides serving as a telecommunications hub, the Tower provides world-class entertainment and a wide range of unique attractions, exhibits and food and beverage venues.")
escape = Event.create(name: "Escape Zone", category: "Art", grpsize: "Group", address: "388 Spadina Avenue 2nd Floor Toronto, ON M5T 2G5 Canada", phone: "(647) 350-0140", cost: "$$", link: "http://www.escapezonetoronto.com/", photo: "http://www.yelp.com/biz_photos/escapezone-toronto?select=-3A_6OHnwhOsR9rLQ8Xlbg", description:"EscapeZone is a Real Life Escape Game provider in Toronto, offering themed escape rooms to players who thrive on brain twisting challenges in an actual physical environment. Real Life Escape Game is the latest global phenomenon which has taken the gaming world by storm, with more and more players experiencing the simple thrills of escaping from cleverly designed escape rooms.")

# sports Free

# sports $
archery_tag = Event.create(name: "Archery Tag District", category: "Sports", grpsize: "Group", address: "770 Birchmount Rd #22, Scarborough, ON", phone: "(647) 955-3111", cost: "$", link: "http://www.archerydistrict.com/", photo: "http://www.archerytoronto.ca/images/Archery-District-01.png", description: "Archery tag is played similar to dodgeball with our bows and patented foam-tipped arrows. This exciting, action-packed game offers the ultimate family-friendly experience that engages everyone. Don’t miss out on Tag … The game you never outgrow! 
")
# sport $$
ifly = Event.create(name: "iFly Toronto", category: "Sports", grpsize: "Group", address: "2007 Winston Park Dr, Oakville, ON", phone: "(289)-795-4000", cost: "$$", link: "http://www.iflytoronto.com", photo: "http://urbanmoms.ca/wp-content/uploads/2014/12/ifly-toronto.jpg", description: "Indoor free-fall skydiving is for everyone. No prior experience is necessary. So, whether you are an experienced skydiver or have never tried a sport like this before, this discipline is available to you. The sport is also accessible to people with disabilities.")
# film $$
# film $$$
george = Event.create(name: "George", category: "Food", grpsize: "Couple", address: "111 Queen St E Toronto, ON M5C 1S2 Canada", phone: "(416) 863-6006", cost: "$$$", link: "www.georgeonqueen.com", photo: "http://www.yelp.com/biz_photos/george-toronto?select=13Wto1ZVisvZvnENTAgeQA", description:"Many rave that GEORGE is the best restaurant in Toronto. Under the culinary leadership of renowned Executive Chef Lorenzo Loseto, GEORGE has become a top-rated and best restaurant for the city of Toronto’s fine dining. Recently named the 2014 Canadian Culinary Champion, Chef Loseto is widely regarded as the best restaurant Chef in the country today.")
# food $
burrito_Boyz = Event.create(name: "Burrito Boyz", category: "Food", grpsize: "Group", address: "224 Adelaide Street West, Toronto, ON", phone: "(647) 439-4065", cost: "$", link: "http://www.burritoboyz.ca", photo:"http://burritoboyz.ca/wp-content/themes/burritoboyz/library/images/logo-pedro-big.png")
smokes_poutinerie = Event.create(name: "Smoke's Poutinerie", category: "Food", grpsize: "Group", address: "218 Adelaide Street West, Toronto, ON  M5H 1W7", phone: "(416) 599-2873", cost: "$", link: "https://smokespoutinerie.com/Locations.aspx", photo: "http://www.smokespoutinerie.com/smokes_logo.jpg")
fat_bastard_burrito = Event.create(name: "Fat Bastard Burrito", category: "Food", grpsize: "Group", address: "254 Adelaide St W, Toronto, ON M5H 1X6", phone: "(647) 345-8835", cost: "$", link:"http://www.fatbastardburrito.ca/", photo:"https://pbs.twimg.com/profile_images/515666539257688064/BtJtIKUh_400x400.png")
the_burger_priest = Event.create(name: "The Burger Priest", category: "Food", grpsize: "Group", address: "212 Adelaide St. W., Toronto, ON, Canada M5H 1W7", phone:"(647) 347-7757", cost: "$", link:"http://www.theburgerspriest.com/", photo:"http://theburgersprie.wpengine.com/wp-content/uploads/2014/04/logo2.png")
McDonald = Event.create(name: "Mc Donalds", category: "Food", grpsize: "Group", address: "123 YONGE ST, TORONTO ON M5C 1W4", phone:"(416) 862-8899,", cost: "$", link: "http://www.mcdonalds.ca/ca/en.html", photo:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Mcdonalds-90s-logo.svg/2000px-Mcdonalds-90s-logo.svg.png")
#food $$
Elephant_castle = Event.create(name: "Elephant Castle", category: "Food", grpsize: "Group", address: "212 KING STREET WEST", phone: "(416) 598-4455", cost: "$$", link: "http://www.elephantcastle.com/", photo: "http://www.elephantcastle.com/sites/all/themes/elephant_castle/img/elephant-castle.png")
Lone_star= Event.create(name: "Lone Star Texas Grill", category: "Food", grpsize: "Group", address: "212 King St West, Toronto, ON M5H 1K5", phone: "(416)408-4064", cost: "$$", link: "http://www.lonestartexasgrill.com/", photo: "https://media-cdn.tripadvisor.com/media/photo-s/05/73/41/b4/lone-star-texas-grill.jpg")
Elcaballito= Event.create(name: "El Caballito", category: "Food", grpsize: "Group", address: "220 KING STREET WEST, Toronto, Ontario", phone: "416 628 9838", cost: "$$", link: "http://www.elcaballito.ca/", photo: "http://www.elcaballito.ca/wp-content/themes/elcaballito/library/img/cab_img_share.jpg")
Gabby= Event.create(name: "Gabby's", category: "Food", grpsize: "Group", address: "189 King Street East, Toronto, ON M4I 1E1", phone: "(416)-703-7771", cost: "$$", link: "http://www.gabbys.ca/locations.php", photo: "http://payload254.cargocollective.com/1/15/488127/7380776/gabbysLOGOredux.png")
Keg= Event.create(name: "keg Steak House", category: "Food", grpsize: "Group", address: "165 York Street, Toronto, Ontario M5H 3R8", phone: "(416) 703-1773", cost: "$$", link: "https://www.kegsteakhouse.com/locations/york-street-keg/#!/#siteContent", photo: "https://www.kegsteakhouse.com/themes/keg/images/fb-share-gen.jpg")