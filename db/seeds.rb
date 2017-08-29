# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Jason")
u2 =User.create(name: "Sophie")
u3 = User.create(name: "Henry")
u4 = User.create(name: "Stanley")

e1 = u1.created_events.build(name: "Past Event", date: Time.now - 7*60*60*24)
e2 = u2.created_events.build(name: "Future Event", date: Time.now + 7*60*60*24)

e1.save
e2.save

e1.attendees << [u2,u3,u4]
e2.attendees << [u1,u4]
