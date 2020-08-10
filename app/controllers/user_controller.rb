class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @products = Product.where(admin_id: @user.id)
  end

  def inventory
    @user = User.find(params[:id])
    product_ids = Product.select(:id).where(admin_id: @user.id)
    @inventory = Inventory.select('inventories.*, products.product_name as product_name').joins(:product).where(products: {id: product_ids})
  end

end
