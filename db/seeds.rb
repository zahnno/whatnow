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
golf = Event.create(name: "Pro Golf", category: "Sports", grpsize: "Group", address: "500 King Street West, Toronto, ON", phone: "(152)-345-4443", cost: "Free", link: "Progolf.com", photo: "http://meafordgolf.com/wp-content/uploads/2015/03/sweet-golf-pic.jpg")
# sports $
paintball = Event.create(name: "AGGPaintBall", category: "Sports", grpsize: "Group", address: "220 King Street West, Toronto, ON", phone: "(905)-345-7654", cost: "$", link: "paintball.com", photo: "http://www.esnleiria.com/sites/default/files/events/images/paye-50-000-dollars-pour-tester-des-billes-de-paintball-01.jpg")
archery_tag = Event.create(name: "Archery Tag District", category: "Sports", grpsize: "Group", address: "770 Birchmount Rd #22, Scarborough, ON", phone: "(647) 955-3111", cost: "$", link: "http://www.archerydistrict.com/", photo: "http://www.archerytoronto.ca/images/Archery-District-01.png")
# sport $$
ifly = Event.create(name: "iFly Toronto", category: "Sports", grpsize: "Group", address: "2007 Winston Park Dr, Oakville, ON", phone: "(289)-795-4000", cost: "$$", link: "http://www.iflytoronto.com", photo: "http://urbanmoms.ca/wp-content/uploads/2014/12/ifly-toronto.jpg")
# film $$
movie = Event.create(name: "Terminator", category: "Film", grpsize: "Couple", address: "5 Brendan Court, Thornhill, ON", phone: "(522)-645-2345", cost: "$$", link: "cineplex.com", photo: "http://ghsjournalism.com/wp-content/uploads/2015/11/Movie-Releases.jpg")
#film $$$
artshow = Event.create(name: "Art Museum", category: "Art", grpsize: "Couple", address: "475 Queen Street West, Toronto, ON", phone: "(455)-324-6543", cost: "$$$", link: "gallery.com", photo:"http://campbelllofts.ca/wp-content/uploads/2015/09/Fine-art1.jpg")
# food $
brewfest = Event.create(name: "2016 Toronto Winter Brewfest", category: "Food", grpsize: "Group", address: "100 Princes' Blvd #1, Toronto, ON", phone: "(416) 263-3000", cost: "$", link: "http://brewfest.ca/toronto/buy-tickets.php", photo: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTWz3Ie56lWq4Mu4Habw-VtwvAmC-kT3a0ya0qguH8l54M3aQVj8A")
burrito_Boyz = Event.create(name: "Burrito Boyz", category: "Food", grpsize: "Group", address: "224 Adelaide Street West, Toronto, ON", phone: "(647) 439-4065", cost: "$", link: "http://www.burritoboyz.ca", photo:"http://burritoboyz.ca/wp-content/themes/burritoboyz/library/images/logo-pedro-big.png")
smokes_poutinerie = Event.create(name: "Smoke's Poutinerie", category: "Food", grpsize: "Group", address: "218 Adelaide Street West, Toronto, ON  M5H 1W7", phone: "(416) 599-2873", cost: "$", link: "https://smokespoutinerie.com/Locations.aspx", photo: "http://www.smokespoutinerie.com/smokes_logo.jpg")
fat_bastard_burrito = Event.create(name: "Fat Bastard Burrito", category: "Food", grpsize: "Group", address: "254 Adelaide St W, Toronto, ON M5H 1X6", phone: "(647) 345-8835", cost: "$", link:"http://www.fatbastardburrito.ca/", photo:"https://pbs.twimg.com/profile_images/515666539257688064/BtJtIKUh_400x400.png")
the_burger_priest = Event.create(name: "The Burger Priest", category: "Food", grpsize: "Group", address: "212 Adelaide St. W., Toronto, ON, Canada M5H 1W7", phone:"(647) 347-7757", cost: "$", link:"http://www.theburgerspriest.com/", photo:"http://theburgersprie.wpengine.com/wp-content/uploads/2014/04/logo2.png")
McDonald = Event.create(name: "Mc Donalds", category: "Food", grpsize: "Group", address: "123 YONGE ST, TORONTO ON M5C 1W4", phone:"(416) 862-8899,", cost: "$", link: "http://www.mcdonalds.ca/ca/en.html", photo:"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Mcdonalds-90s-logo.svg/2000px-Mcdonalds-90s-logo.svg.png")
#food $$
italian = Event.create(name: "Mamacita", category: "Food", grpsize: "Couple", address: "2076 Bathurst Street, Toronto, ON", phone: "(934)-345-7654", cost: "$$", link: "mamacita.com", photo: "http://www.palmroyaleresort.com/Photos/AlbumItems/Il%20Portico%20-%20Italian%20Restaurant_4ef42_lg.jpg")
Elephant_castle = Event.create(name: "Elephant Castle", category: "Food", grpsize: "Group", address: "212 KING STREET WEST", phone: "(416) 598-4455", cost: "$$", link: "http://www.elephantcastle.com/", photo: "http://www.elephantcastle.com/sites/all/themes/elephant_castle/img/elephant-castle.png")
Lone_star= Event.create(name: "Lone Star Texas Grill", category: "Food", grpsize: "Group", address: "212 King St West, Toronto, ON M5H 1K5", phone: "(416)408-4064", cost: "$$", link: "http://www.lonestartexasgrill.com/", photo: "https://media-cdn.tripadvisor.com/media/photo-s/05/73/41/b4/lone-star-texas-grill.jpg")
Elcaballito= Event.create(name: "El Caballito", category: "Food", grpsize: "Group", address: "220 KING STREET WEST, Toronto, Ontario", phone: "416 628 9838", cost: "$$", link: "http://www.elcaballito.ca/", photo: "http://www.elcaballito.ca/wp-content/themes/elcaballito/library/img/cab_img_share.jpg")
Gabby= Event.create(name: "Gabby's", category: "Food", grpsize: "Group", address: "189 King Street East, Toronto, ON M4I 1E1", phone: "(416)-703-7771", cost: "$$", link: "http://www.gabbys.ca/locations.php", photo: "http://payload254.cargocollective.com/1/15/488127/7380776/gabbysLOGOredux.png")
Keg= Event.create(name: "keg Steak House", category: "Food", grpsize: "Group", address: "165 York Street, Toronto, Ontario M5H 3R8", phone: "(416) 703-1773", cost: "$$", link: "https://www.kegsteakhouse.com/locations/york-street-keg/#!/#siteContent", photo: "https://www.kegsteakhouse.com/themes/keg/images/fb-share-gen.jpg")