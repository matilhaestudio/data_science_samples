class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.integer :user_gender
      t.integer :user_age
      t.integer :article_id
      t.integer :category_id
      t.float :avg_expending
      t.integer :weekday_id
      t.integer :hour_id
      t.timestamps
    end
  end
end
