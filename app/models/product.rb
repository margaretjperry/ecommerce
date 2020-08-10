class Product < ApplicationRecord
	has_many :inventories
	has_many :orders
	belongs_to :user
end