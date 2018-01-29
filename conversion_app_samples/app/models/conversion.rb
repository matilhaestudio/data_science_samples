# t.integer :user_id
# t.integer :user_gender
# t.integer :user_age
# t.integer :state_id
# t.string :state
# t.integer :city_id
# t.string :city
# t.integer :product_id
# t.string :product
# t.integer :category_id
# t.string :category
# t.float :price
# t.integer :referal_id
# t.string :referal
# t.integer :weekday_id
# t.integer :hour_id
# t.integrer :is_converted

class Conversion < ApplicationRecord
	def self.to_csv
		require 'csv'
		file = "#{Rails.root}/public/data.csv"
		lines = Conversion.all
		 
		CSV.open( file, 'w' ) do |writer|
		  writer << [ 
		  				"id", 
		  				"user_id", 
		  				"user_gender", 
		  				"user_age", 
		  				"state_id", 
		  				"state", 
		  				"city_id", 
		  				"city", 
		  				"product_id", 
		  				"product",
		  				"category_id", 
		  				"category",
		  				"price", 
		  				"referal_id",
		  				"referal",
		  				"weekday_id", 
		  				"hour_id",
		  				"weather_id",
		  				"sazonal_id",
		  				"is_converted"
		  			]
		  lines.each do |l|
		    writer << [ 
		    			l.id, 
		    			l.user_id, 
		    			l.user_gender, 
		    			l.user_age,
		    			l.state_id,
		    			l.state,
		    			l.city_id,
		    			l.city, 
		    			l.product_id, 
		    			l.product,
		    			l.category_id, 
		    			l.category,
		    			l.price,
		    			l.referal_id,
		    			l.referal, 
		    			l.weekday_id, 
		    			l.hour_id,
		    			l.weather_id,
		    			l.sazonal_id,
		    			l.is_converted
		    		]
		  end
		end
	end
end
