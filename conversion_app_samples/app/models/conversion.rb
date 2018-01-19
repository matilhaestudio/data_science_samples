class Conversion < ApplicationRecord
	def self.to_csv
		require 'csv'
		file = "#{Rails.root}/public/data.csv"
		lines = Conversion.all
		 
		CSV.open( file, 'w' ) do |writer|
		  writer << [ "id", "user_id", "user_gender", "user_age", "product_id", "category_id", "price", "weekday_id", "hour_id" ]
		  lines.each do |l|
		    writer << [ l.id, l.user_id, l.user_gender, l.user_age, l.product_id, l.category_id, l.price, l.weekday_id, l.hour_id ]
		  end
		end
	end
end
