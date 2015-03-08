# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

res = Restaurant.new(name: 'ABC')
l1=res.locations.build(name: 'ABC madhapur', address: '#102, central plaza, madhapur. hyd')
l1.menu.build(item: 'Idly', type_of: 'Breakfast', day: 'Monday')
l1.menu.build(item: 'Dosa', type_of: 'Breakfast', day: 'Monday')
l1.menu.build(item: 'North Thali', type_of: 'Lunch, Dinner', day: 'Monday')
l1.menu.build(item: 'Pakoda', type_of: 'Snakcs', day: 'Monday')
l1.menu.build(item: 'Samosa', type_of: 'Snacks', day: 'Monday')
l1.menu.build(item: 'Tea', type_of: 'Anytime', day: 'Monday')
l1.menu.build(item: 'Coffee', type_of: 'Anytime', day: 'Monday')

l2=res.locations.build(name: 'ABC koti', address: 'badichowdi, koti. hyd')
l2m1=l2.menu.build(item: 'Vada', type_of: 'Breakfast', day: 'Tuesday')
l2m2=l2.menu.build(item: 'Dosa', type_of: 'Breakfast, Dinner', day: 'Tuesday')
l2.menu.build(item: 'South Thali', type_of: 'Lunch, Dinner', day: 'Tuesday')
l2.menu.build(item: 'Biriyani', type_of: 'Dinner', day: 'Tuesday')
l2.menu.build(item: 'Punugulu', type_of: 'Snakcs', day: 'Tuesday')
l2.menu.build(item: 'Samosa', type_of: 'Snacks', day: 'Tuesday')
l2.menu.build(item: 'Milk', type_of: 'Anytime', day: 'Tuesday')
l2.menu.build(item: 'Juice', type_of: 'Anytime', day: 'Tuesday')

# l2m1.feedback.bu

l3=res.locations.build(name: 'ABC dilsukhnagar', address: 'teachers colony, dilsukhnagar. hyd')
l3.menu.build(item: 'Pongali', type_of: 'Breakfast, Dinner', day: 'Wednesday')
l3.menu.build(item: 'Upma', type_of: 'Breakfast', day: 'Wednesday')
l3.menu.build(item: 'Gongura Rice', type_of: 'Lunch', day: 'Wednesday')
l3.menu.build(item: 'Biriyani', type_of: 'Dinner', day: 'Wednesday')
l3.menu.build(item: 'Sandwich', type_of: 'Snakcs', day: 'Wednesday')
l3.menu.build(item: 'Samosa', type_of: 'Snacks', day: 'Wednesday')
l3.menu.build(item: 'Milk', type_of: 'Anytime', day: 'Wednesday')
l3.menu.build(item: 'Tea', type_of: 'Anytime', day: 'Wednesday')



res.save!
