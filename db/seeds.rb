ingredients = [  "pepperoni",  "mushrooms",  "onions",  "olives",  "mozzarella cheese",  "tomato sauce",  "garlic",  "basil",  "oregano",  "bell peppers",  "jalapenos",  "pineapple",  "ham",  "bacon",  "sausage",  "chicken",  "artichokes",  "sun-dried tomatoes",  "feta cheese",  "parmesan cheese",  "ricotta cheese",  "goat cheese",  "spinach",  "arugula"]

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
