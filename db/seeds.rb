# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
andrew = User.new(email: 'andrew@example.com', password: 'password', password_confirmation: 'password')
andrew.skip_confirmation!
andrew.save!
bobby = User.new(email: 'bobby@example.com', password: 'password', password_confirmation: 'password')
bobby.skip_confirmation!
bobby.save!

# Groups
average_joes = Group.create(name: 'Average Joes', description: "Just a bunch of average Joes.")
purple_cobras = Group.create(name: 'Purple Cobras', description: "We ARE the Globo Gym Purple Cobras... and we will, we will, rock you!")

# Events
beach_volleyball = Event.create(name: 'Beach Volleyball', description: 'Fun in the sun!', group_id: purple_cobras.id)
dodgeball = Event.create(name: 'Dodgeball', description: 'If you can dodge a wrench, you can dodge a ball!', group_id: average_joes.id)
