class RestaurantsController < ApplicationController

    def index 
        render json: Restaurant.all, except: [:created_at, :updated_at]
    end

    def show 
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant 
            render json: restaurant, except: [:created_at, :updated_at], include: :pizzas
        else 
            render json: { error:  "Restaurant not found" }, status: :not_found
        end

        # if params[restaurant_id]
        #     if restaurant 
        #         restaurant = Restaurant.find_by(id: params[:id])
        #         pizzas = restaurant.pizzas.find_by(id: params[:id])
        #         render json: restaurant, include: :pizzas
        #     else 
        #         render json: { error: "Restaurant not found" }, status: :not
        #     end
        # else 
        #     pizzas = Pizza.all 
        #     render json: pizzas, include: :restaurant
        # end
    end
end
