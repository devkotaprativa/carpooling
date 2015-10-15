class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :destination
    	t.string :departure
    	t.integer :seats
    	t.datetime :d_time
    	t.references :users, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
