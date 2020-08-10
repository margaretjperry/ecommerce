class AddInventoriesTable < ActiveRecord::Migration[6.0]
  def change
  	create_table :inventories do |t|
  		t.integer :product_id
  		t.integer :quantity
  		t.string :color
  		t.string :size
  		t.integer :weight
  		t.integer :price_cents
  		t.integer :sale_price_cents
  		t.integer :cost_cents
  		t.string :sku
  		t.integer :length
  		t.integer :width
  		t.integer :height
  		t.string :note
  	end
  end
end
