class User < ApplicationRecord
	def self.to_csv
		require 'csv'
		file = "#{Rails.root}/public/data.csv"
		lines = User.all
		 
		CSV.open( file, 'w' ) do |writer|
		  writer << [ "id", "user_id", "user_gender", "user_age", "article_id", "category_id", "avg_expending", "weekday_id", "hour_id" ]
		  lines.each do |l|
		    writer << [ l.id, l.user_id, l.user_gender, l.user_age, l.article_id, l.category_id, l.avg_expending, l.weekday_id, l.hour_id ]
		  end
		end
	end
end