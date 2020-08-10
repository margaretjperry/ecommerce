class AddOrdersTable < ActiveRecord::Migration[6.0]
  def change
  	create_table :orders do |t|
  		t.integer :product_id
  		t.integer :inventory_id
  		t.string :street_address
  		t.string :apartment
  		t.string :city
  		t.string :state
  		t.string :country_code
  		t.integer :zip
  		t.string :phone_number
  		t.string :email
  		t.string :name
  		t.string :order_status
  		t.string :payment_ref
  		t.string :transaction_id
  		t.integer :payment_amt_cents
  		t.integer :ship_charged_cents
  		t.integer :ship_cost_cents
  		t.integer :subtotal_cents
  		t.integer :total_cents
  		t.string :shipper_name
  		t.datetime :payment_date
  		t.datetime :shipped_date
  		t.string :tracking_number
  		t.integer :tax_total_cents
  		t.datetime :created_at
  		t.datetime :updated_at
  	end
  end
end
