# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
MenuItem.destroy_all
Order.destroy_all
#
matt = User.create(email: "matt@email.com", name: "Matt", password: "123")


sex_on_the_beach = MenuItem.create(name: "Sex on the Beach", desc: "2 shrimp tempura, avocado & cucumber layered with spicy tuna, salmon & white tuna", price: 12.99)
kiss_of_fire = MenuItem.create(name: "Kiss of Fire", desc: "sushi on fire ", price: 15.99)
spider = MenuItem.create(name: "Spider", desc: "Deep fried soft shell crab, avocado, mayo & cucumber with masago", price: 12.99)
dragon = MenuItem.create(name: "Dragon", desc: "Broiled fresh water eel on top of California roll", price: 13.99)
stryker = MenuItem.create(name: "Stryker", desc: "Salmon & masago on top of spicy tuna roll with sweet & spicy mayo sauce", price: 12.99)


# order1 = Order.create(user_id: matt.id, menu_item_id: kiss_of_fire.id, order_number: 321)
