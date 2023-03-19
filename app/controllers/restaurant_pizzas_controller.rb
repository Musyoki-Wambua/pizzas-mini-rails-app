class RestaurantPizzasController < ApplicationController

    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
    rescue ActiveRecord::RecordInvalid => e  
        render json: { error: e.record.errors.full_messages  }, status: :unprocessable_entity
    end

    def restaurant_pizza_params 
        params.permit(:price)
    end
end
