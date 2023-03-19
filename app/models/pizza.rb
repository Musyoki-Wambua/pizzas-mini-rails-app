class Pizza < ApplicationRecord
    has_many :restraunt_pizzas
    has_many :restaurants, through: :restaurant_pizzas
end
