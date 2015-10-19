class ProductsController < ApplicationController
	def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
    @category_options = Category.all.map{|c| [ c.name, c.id ] }
  end

  def create
  	@product = Product.new(product_params)
  	@product.save
  	redirect_to products_path
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to products_path
  end

  private

  def product_params
  	params.require(:product).permit(:name, :price, :category_id)
  end
end
