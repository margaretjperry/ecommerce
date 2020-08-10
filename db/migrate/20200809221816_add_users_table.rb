class AddUsersTable < ActiveRecord::Migration[6.0]
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :email
  		t.string :password_hash
  		t.string :password_plain
  		t.boolean :superadmin
  		t.string :shop_name
  		t.string :remember_token
  		t.datetime :created_at
  		t.datetime :updated_at
  		t.string :card_brand
  		t.integer :card_last_four
  		t.datetime :trial_ends_at
  		t.string :shop_domain
  		t.boolean :is_enabled
  		t.string :billing_plan
  		t.datetime :trial_starts_at
  	end
  end
end
