class CreateConversions < ActiveRecord::Migration[5.0]
  def change
    create_table :conversions do |t|
      t.integer :user_id
      t.integer :user_gender
      t.integer :user_age
      t.integer :state_id
      t.string :state
      t.integer :city_id
      t.string :city
      t.integer :product_id
      t.string :product
      t.integer :category_id
      t.string :category
      t.float :price
      t.integer :referal_id
      t.string :referal
      t.integer :weekday_id
      t.integer :hour_id
      t.integer :is_converted
      
      t.timestamps
    end
  end
end
