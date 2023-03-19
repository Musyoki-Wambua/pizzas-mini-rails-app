class Restaurant < ApplicationRecord
    has_many :restaurant_pizzass
    has_many :pizzas, through: :restaurant_pizzas
end
