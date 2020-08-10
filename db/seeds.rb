# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

dir = "#{Rails.root}/db/csv"
CSV.foreach("#{dir}/users.csv", :headers => true) do |row|
    u = User.create(row.to_h)
end

CSV.foreach("#{dir}/orders.csv", :headers => true) do |row|
    o = Order.create(row.to_h)
end

CSV.foreach("#{dir}/inventory.csv", :headers => true) do |row|
    i = Inventory.create(row.to_h)
end

CSV.foreach("#{dir}/products.csv", :headers => true) do |row|
    i = Product.create(row.to_h)
end