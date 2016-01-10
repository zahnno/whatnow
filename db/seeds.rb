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
#food $$
italian = Event.create(name: "Mamacita", category: "Food", grpsize: "Couple", address: "2076 Bathurst Street, Toronto, ON", phone: "(934)-345-7654", cost: "$$", link: "mamacita.com", photo: "http://www.palmroyaleresort.com/Photos/AlbumItems/Il%20Portico%20-%20Italian%20Restaurant_4ef42_lg.jpg")



