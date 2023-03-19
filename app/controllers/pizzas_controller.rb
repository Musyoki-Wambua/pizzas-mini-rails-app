class PizzasController < ApplicationController
    def index 
        render json: Pizza.all, except: [:created_at, :updated_at]
    end
end
