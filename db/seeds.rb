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

# sports Free
hoopdome = Event.create(name: "Hoopdome", category: "Sports", grpsize: "Solo", address: "75 Carl Hall Rd #17, North York, ON M3K 2B9", phone: "(416) 633-4667", cost: "free", link: "http://www.hoopdome.com", photo: "http://www.avconconstruction.com/commercialgallery/g9/images/07-105%20Hoopdome%20007.jpg")
hoopdome = Event.create(name: "Hoopdome", category: "Sports", grpsize: "Duo", address: "75 Carl Hall Rd #17, North York, ON M3K 2B9", phone: "(416) 633-4667", cost: "free", link: "http://www.hoopdome.com", photo: "http://www.avconconstruction.com/commercialgallery/g9/images/07-105%20Hoopdome%20007.jpg")
hoopdome = Event.create(name: "Hoopdome", category: "Sports", grpsize: "Group", address: "75 Carl Hall Rd #17, North York, ON M3K 2B9", phone: "(416) 633-4667", cost: "free", link: "http://www.hoopdome.com", photo: "http://www.avconconstruction.com/commercialgallery/g9/images/07-105%20Hoopdome%20007.jpg")
skating = Event.create(name: "Natrel Rink", category: "Sports", grpsize: "Duo", address: "235 Queens Quay W, Toronto, ON M5J 2G8", phone: "(416) 973-4000", cost: "free", link: "http://www.harbourfrontcentre.com/venues/natrelrink/", photo: "http://blog.navut.com/wp-content/uploads/2015/02/20101124-GM-Feature0002.jpg")
skating = Event.create(name: "Natrel Rink", category: "Sports", grpsize: "Group", address: "235 Queens Quay W, Toronto, ON M5J 2G8", phone: "(416) 973-4000", cost: "free", link: "http://www.harbourfrontcentre.com/venues/natrelrink/", photo: "http://blog.navut.com/wp-content/uploads/2015/02/20101124-GM-Feature0002.jpg")
# sports $
archery_tag = Event.create(name: "Archery Tag District", category: "Sports", grpsize: "Group", address: "770 Birchmount Rd #22, Scarborough, ON", phone: "(647) 955-3111", cost: "$", link: "http://www.archerydistrict.com/", photo: "http://www.archerytoronto.ca/images/Archery-District-01.png")
# sport $$
ifly = Event.create(name: "iFly Toronto", category: "Sports", grpsize: "Group", address: "2007 Winston Park Dr, Oakville, ON", phone: "(289)-795-4000", cost: "$$", link: "http://www.iflytoronto.com", photo: "http://urbanmoms.ca/wp-content/uploads/2014/12/ifly-toronto.jpg")
ifly = Event.create(name: "iFly Toronto", category: "Sports", grpsize: "Duo", address: "2007 Winston Park Dr, Oakville, ON", phone: "(289)-795-4000", cost: "$$", link: "http://www.iflytoronto.com", photo: "http://urbanmoms.ca/wp-content/uploads/2014/12/ifly-toronto.jpg")
# film $$
absolute_comedy = Event.create(name: "Absolute Comedy Club", category: "Film", grpsize: "Duo", address: "2335 Yonge St, Toronto, ON M4P 2C8", phone: "(416) 486-7700", cost: "$$", link: "http://toronto.absolutecomedy.ca/", photo: "https://i.ytimg.com/vi/EvJWvrTyxNw/maxresdefault.jpg")
absolute_comedy = Event.create(name: "Absolute Comedy Club", category: "Film", grpsize: "Group", address: "2335 Yonge St, Toronto, ON M4P 2C8", phone: "(416) 486-7700", cost: "$$", link: "http://toronto.absolutecomedy.ca/", photo: "https://i.ytimg.com/vi/EvJWvrTyxNw/maxresdefault.jpg")
karaoke = Event.create(name: "Bar+ Karaoke", category: "Film", grpsize: "Group", address: "360 Yonge St #2, Toronto, ON M5B 1S5", phone: "(416) 340-7154", cost: "$$", link: "https://bar-plus.com/#/0", photo: "http://s3-media4.fl.yelpcdn.com/bphoto/9O806MU2-w6-eyRIHVDVmQ/o.jpg")
karaoke = Event.create(name: "Bar+ Karaoke", category: "Film", grpsize: "Duo", address: "360 Yonge St #2, Toronto, ON M5B 1S5", phone: "(416) 340-7154", cost: "$$", link: "https://bar-plus.com/#/0", photo: "http://s3-media4.fl.yelpcdn.com/bphoto/9O806MU2-w6-eyRIHVDVmQ/o.jpg")
#film $$$
# food $
burrito_Boyz = Event.create(name: "Burrito Boyz", category: "Food", grpsize: "Group", address: "224 Adelaide Street West, Toronto, ON", phone: "(647) 439-4065", cost: "$", link: "http://www.burritoboyz.ca", photo:"http://burritoboyz.ca/wp-content/themes/burritoboyz/library/images/logo-pedro-big.png")
smokes_poutinerie = Event.create(name: "Smoke's Poutinerie", category: "Food", grpsize: "Group", address: "218 Adelaide Street West, Toronto, ON  M5H 1W7", phone: "(416) 599-2873", cost: "$", link: "https://smokespoutinerie.com/Locations.aspx", photo: "http://www.smokespoutinerie.com/smokes_logo.jpg")
fat_bastard_burrito = Event.create(name: "Fat Bastard Burrito", category: "Food", grpsize: "Group", address: "254 Adelaide St W, Toronto, ON M5H 1X6", phone: "(647) 345-8835", cost: "$", link:"http://www.fatbastardburrito.ca/", photo:"https://pbs.twimg.com/profile_images/515666539257688064/BtJtIKUh_400x400.png")
the_burger_priest = Event.create(name: "The Burger Priest", category: "Food", grpsize: "Group", address: "212 Adelaide St. W., Toronto, ON, Canada M5H 1W7", phone:"(647) 347-7757", cost: "$", link:"http://www.theburgerspriest.com/", photo:"http://theburgersprie.wpengine.com/wp-content/uploads/2014/04/logo2.png")
McDonald = Event.create(name: "Mc Donalds", category: "Food", grpsize: "Group", address: "123 YONGE ST, TORONTO ON M5C 1W4", phone:"(416) 862-8899,", cost: "$", link: "http://www.mcdonalds.ca/ca/en.html", photo:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Mcdonalds-90s-logo.svg/2000px-Mcdonalds-90s-logo.svg.png")
snakes_and_lattes = Event.create(name: "Snakes & Lattes Board Game Cafe", category: "Food", grpsize: "Duo", address: "600 Bloor St W, Toronto, ON", phone: "(647) 342-9229", cost: "$", link: "http://www.snakesandlattes.com", photo:"http://www.snakesandlattes.com/img/ico/600.png")
snakes_and_lattes = Event.create(name: "Snakes & Lattes Board Game Cafe", category: "Food", grpsize: "Group", address: "600 Bloor St W, Toronto, ON", phone: "(647) 342-9229", cost: "$", link: "http://www.snakesandlattes.com", photo:"http://www.snakesandlattes.com/img/ico/600.png")
#food $$
Elephant_castle = Event.create(name: "Elephant Castle", category: "Food", grpsize: "Group", address: "212 King Street West", phone: "(416) 598-4455", cost: "$$", link: "http://www.elephantcastle.com/", photo: "http://www.elephantcastle.com/sites/all/themes/elephant_castle/img/elephant-castle.png")
Lone_star= Event.create(name: "Lone Star Texas Grill", category: "Food", grpsize: "Group", address: "212 King St West, Toronto, ON M5H 1K5", phone: "(416)408-4064", cost: "$$", link: "http://www.lonestartexasgrill.com/", photo: "https://media-cdn.tripadvisor.com/media/photo-s/05/73/41/b4/lone-star-texas-grill.jpg")
Elcaballito= Event.create(name: "El Caballito", category: "Food", grpsize: "Group", address: "220 King Street West, Toronto, Ontario", phone: "416 628 9838", cost: "$$", link: "http://www.elcaballito.ca/", photo: "http://www.elcaballito.ca/wp-content/themes/elcaballito/library/img/cab_img_share.jpg")
Gabby= Event.create(name: "Gabby's", category: "Food", grpsize: "Group", address: "189 King Street East, Toronto, ON M4I 1E1", phone: "(416)-703-7771", cost: "$$", link: "http://www.gabbys.ca/locations.php", photo: "http://payload254.cargocollective.com/1/15/488127/7380776/gabbysLOGOredux.png")
Keg= Event.create(name: "keg Steak House", category: "Food", grpsize: "Group", address: "165 York Street, Toronto, Ontario M5H 3R8", phone: "(416) 703-1773", cost: "$$", link: "https://www.kegsteakhouse.com/locations/york-street-keg/#!/#siteContent", photo: "https://www.kegsteakhouse.com/themes/keg/images/fb-share-gen.jpg")
#art $
ago = Event.create(name: "Art Gallery of Ontario", category: "Art", grpsize: "Duo", address: "317 Dundas St W, Toronto, ON M5T 1G4", phone: "(416) 979-6648", cost: "$$", link: "http://www.ago.net/?_sp=d67fcbe27e3e3175.1452570231972", photo: "http://fashweekly.com/wp-content/uploads/2013/05/ago.jpg")
ago = Event.create(name: "Art Gallery of Ontario", category: "Art", grpsize: "Solo", address: "317 Dundas St W, Toronto, ON M5T 1G4", phone: "(416) 979-6648", cost: "$$", link: "http://www.ago.net/?_sp=d67fcbe27e3e3175.1452570231972", photo: "http://fashweekly.com/wp-content/uploads/2013/05/ago.jpg")
ago = Event.create(name: "Art Gallery of Ontario", category: "Art", grpsize: "Group", address: "317 Dundas St W, Toronto, ON M5T 1G4", phone: "(416) 979-6648", cost: "$$", link: "http://www.ago.net/?_sp=d67fcbe27e3e3175.1452570231972", photo: "http://fashweekly.com/wp-content/uploads/2013/05/ago.jpg")

