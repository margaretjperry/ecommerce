class ProductController < ApplicationController

  def create
  	@product = Product.new(product_name: params[:product_name], description: params[:product_description],
  		style: params[:style], brand: params[:brand], product_type: params[:product_type],
  		shipping_price: (params[:price].to_i * 100), admin_id: params[:admin_id])
  	respond_to do |format|
    if @product.save
      format.html { redirect_to user_path(params[:admin_id]), notice: 'Product was successfully created.' }
      format.js { render layout: false}
      format.json { render json: @product, status: :created, location: @product }
    else
      format.html { render action: "new" }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
  end

end
