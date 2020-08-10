class AddProductsTable < ActiveRecord::Migration[6.0]
  def change
  	create_table :products do |t|
  		t.string :product_name
  		t.string :description
  		t.string :style
  		t.string :brand
  		t.datetime :created_at
  		t.datetime :updated_at
  		t.string :url
  		t.string :product_type
  		t.integer :shipping_price
  		t.string :note
  		t.integer :admin_id
  	end
  end
end
