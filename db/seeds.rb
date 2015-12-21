# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

paintball = Event.create(name: "AGGPaintBall", category: "Sports", grpsize: "Group", address: "220 King Street West, Toronto, ON", phone: "(905)-345-7654", cost: 30, link: "paintball.com")
italian = Event.create(name: "Mamacita", category: "Food", grpsize: "Couple", address: "2076 Bathurst Street, Toronto, ON", phone: "(934)-345-7654", cost: 80, link: "mamacita.com")
golf = Event.create(name: "Pro Golf", category: "Sports", grpsize: "Group", address: "500 King Street West, Toronto, ON", phone: "(152)-345-4443", cost: 40, link: "Progolf.com")
movie = Event.create(name: "Terminator", category: "Film", grpsize: "Couple", address: "5 Brendan Court, Thornhill, ON", phone: "(522)-645-2345", cost: 20, link: "cineplex.com")
artshow = Event.create(name: "Art Museum", category: "Art", grpsize: "Couple", address: "475 Queen Street West, Toronto, ON", phone: "(455)-324-6543", cost: 15, link: "gallery.com")

params = { category: '1',
	city: 'Toronto',
	country: 'CA',
	status: 'upcoming',
	format: 'json',
	page: '50' }
	meetup_api = MeetupApi.new
	events = meetup_api.open_events(params)

paintball = Event.create(name: "AGGPaintBall", category: "Sports", grpsize: "Group", address: "220 King Street West, Toronto, ON", phone: "(905)-345-7654", cost: 30, link: "paintball.com", photo: "http://www.esnleiria.com/sites/default/files/events/images/paye-50-000-dollars-pour-tester-des-billes-de-paintball-01.jpg")
italian = Event.create(name: "Mamacita", category: "Food", grpsize: "Couple", address: "2076 Bathurst Street, Toronto, ON", phone: "(934)-345-7654", cost: 80, link: "mamacita.com", photo: "http://www.palmroyaleresort.com/Photos/AlbumItems/Il%20Portico%20-%20Italian%20Restaurant_4ef42_lg.jpg")
golf = Event.create(name: "Pro Golf", category: "Sports", grpsize: "Group", address: "500 King Street West, Toronto, ON", phone: "(152)-345-4443", cost: 40, link: "Progolf.com", photo: "http://meafordgolf.com/wp-content/uploads/2015/03/sweet-golf-pic.jpg")
movie = Event.create(name: "Terminator", category: "Film", grpsize: "Couple", address: "5 Brendan Court, Thornhill, ON", phone: "(522)-645-2345", cost: 20, link: "cineplex.com", photo: "http://ghsjournalism.com/wp-content/uploads/2015/11/Movie-Releases.jpg")
artshow = Event.create(name: "Art Museum", category: "Art", grpsize: "Couple", address: "475 Queen Street West, Toronto, ON", phone: "(455)-324-6543", cost: 15, link: "gallery.com", photo:"http://campbelllofts.ca/wp-content/uploads/2015/09/Fine-art1.jpg")
