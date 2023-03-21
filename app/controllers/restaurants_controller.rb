class RestaurantsController < ApplicationController

    def index 
        render json: Restaurant.all, except: [:created_at, :updated_at], include: { pizzas: { except: [:created_at, :updated_at ]}}
    end

    def show 
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant 
            render json: restaurant, except: [:created_at, :updated_at], include: :pizzas
        else 
            render json: { error:  "Restaurant not found" }, status: :not_found
        end
    end

    def destroy  
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant 
            restaurant.destroy 
            render json: { error: "Restaurant not found" }, status: :no_content
            # head :no_content
        else 
            render json: { error: "Restaurant not found" }, status: :not_found
        end

    end
end
