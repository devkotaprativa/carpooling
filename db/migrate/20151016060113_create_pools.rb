class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.integer :seats
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
