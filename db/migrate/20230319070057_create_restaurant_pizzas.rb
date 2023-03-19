class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      t.integer :pizza_id, null: false, default: 1
      t.integer :restaurant_id, null: false, default: 1

      t.timestamps
    end
  end
end
