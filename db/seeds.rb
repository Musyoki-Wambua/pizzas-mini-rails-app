ingredients = [  "Pepperoni",  "Mushrooms",  "onions",  "Macon",  "mozzarella cheese",  "tomato sauce",  "Garlic",  "Beef Pepperoni",  "oregano",  "bell peppers",  "Spicy Sausage",  "pineapple",  "ham",  "Bacon",  "Sandwich Beef",  "chicken",  "Steak strips",  "Meatballs",  "Creamy Mayo",  "Beef Mince",  "Roasted Chicken",  "Chilli",  "spinach", "Marinated Tikka Chicken", "Marinated BBQ Steak", "Farmer's Choice Sausage"]

pizzas = ["Hawaiian", "Chicken Ticka", "Beef Pepporoni", "Chicken Peporoni", "BBQ Chicken" ]

puts "🐕 Seeding data..."

5.times do 
    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address
    )
end
3.times do 
    pizza = Pizza.create(
        name: pizzas.sample,
        ingredients: ingredients.sample(5).join(", ")
    )
end
3.times do 
    restaurant_pizza = RestaurantPizza.create(
        price: Faker::Commerce.price(range: 1..30, as_string: false)
    )
end

puts "✅ Done seeding!"
