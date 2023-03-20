class RestaurantPizzasController < ApplicationController

    def index 
        render json: RestaurantPizza.all, except: [:created_at, :updated_at], include: { pizza: { except: [:created_at, :updated_at] } }
    end

    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: { restaurant_pizza: restaurant_pizza }
    rescue ActiveRecord::RecordInvalid => e  
        render json: { error: e.record.errors.full_messages  }, status: :unprocessable_entity
    end

    def restaurant_pizza_params 
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
