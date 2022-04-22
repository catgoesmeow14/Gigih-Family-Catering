# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create([
    {
        name: "Appetizer"
    },
    {
        name: "Main Course"
    },
    {
        name: "Dessert"
    },
    {
        name: "Beverage"
    }
])

menus = Menu.create([
    {
        name: 'Mie Ayam Bakso',
        description: 'Indonesian chicken noodles with meatballs.',
        price: 15000.0
    },
    {
        name: "Bakwan",
        price: 5000.0,
        description: "A vegetable fritter or gorengan from Indonesian cuisine."
    },
    {
        name: "Chocolate Milk Pudding",
        price: 10000.0,
        description: "Soft and sweet pudding with chocolate and milk flavors."
    },
    {
        name: "Es Teh",
        price: 7000.0,
        description: "cold tea drinks because it was given ice."
    }
])

category_details = CategoryDetail.create([
    {
        category: categories.first,
        menu: menus.first
        
    }
])

customers = Customer.create([
    {
        name: "Vidya Chan",
        email: "pidydaw@gmail.com"
    },
    {
        name: "Ryuzu",
        email: "ryuzukazuha@gmail.com"
    }
])
