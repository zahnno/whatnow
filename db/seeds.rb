# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
paintball = Event.create(name: "AGGPaintBall", category: "Sports", grpsize: "Group", address: "24 Grate St", phone: "(905)-345-7654", cost: 30, link: "paintball.com")
italian = Event.create(name: "Mamacita", category: "Food", grpsize: "Couple", address: "54 Coeding St", phone: "(934)-345-7654", cost: 80, link: "mamacita.com")
golf = Event.create(name: "Pro Golf", category: "Sports", grpsize: "Group", address: "211 Pro St", phone: "(152)-345-4443", cost: 40, link: "Progolf.com")
movie = Event.create(name: "Terminator", category: "Film", grpsize: "Couple", address: "909 Graham St", phone: "(522)-645-2345", cost: 20, link: "cineplex.com")
artshow = Event.create(name: "Art Museum", category: "Art", grpsize: "Couple", address: "4 skill St", phone: "(455)-324-6543", cost: 15, link: "gallery.com")