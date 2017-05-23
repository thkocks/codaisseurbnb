# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Theme.destroy_all
User.destroy_all


modern_style = Theme.create(name: "Modern style")
classical_style = Theme.create(name: "Classical style")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_view = Theme.create(name: "Room with a View")
room_with_balcony = Theme.create(name: "Has a balcony")
room_with_garden = Theme.create(name: "Has a garden")
clean_room = Theme.create(name: "Clean")
messy_room = Theme.create(name: "Shows signs of being lived in")


miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

# Profile.create!(first_name: "Miriam",
#                 last_name: "Van Damme",
#                 bio: "I keep good care of my house and love to travel",
#                 user: miriam)

Room.create!(home_type: "House",
            room_type: "Shared",
            accommodate: 2,
            bedroom_count: 2,
            bathroom_count: 3,
            listing_name: "You will never forget your stay!",
            description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade.",
            address: "Colon 58, 1B, 11100 Cadiz (Spain)",
            has_tv: false,
            has_kitchen: true,
            has_airco: false,
            has_heating: false,
            has_internet: true,
            price: 100,
            active: true,
            user: miriam,
            themes: [modern_style, clean_room])

Room.create!(home_type: "House",
            room_type: "Shared",
            accommodate: 2,
            bedroom_count: 2,
            bathroom_count: 3,
            listing_name: "A place in the middle of Holland",
            description: "Freegan yuccie everyday carry tote bag you probably haven't heard of them godard.",
            address: "Daguerrestraat 23, 1054TG Utrecht (Netherlands)",
            has_tv: false,
            has_kitchen: true,
            has_airco: false,
            has_heating: false,
            has_internet: true,
            price: 100,
            active: true,
            user: wouter,
            themes: [warm_and_cozy, room_with_garden])

Room.create!(home_type: "House",
            room_type: "Shared",
            accommodate: 2,
            bedroom_count: 2,
            bathroom_count: 3,
            listing_name: "Great for a Weekend",
            description: "Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
            address: "Tottenham Court Road 14, W1T 1JY London (UK)",
            has_tv: false,
            has_kitchen: true,
            has_airco: false,
            has_heating: false,
            has_internet: true,
            price: 100,
            active: true,
            user: matt,
            themes: [room_with_view, modern_style])
