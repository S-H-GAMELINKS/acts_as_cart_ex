class CartsController < ApplicationController
    before_action :set_product

    def create
        @cart = Cart.create
        @cart.add(@product, @product.price)
        @cart.save

        redirect_to product_path(@product)
    end

    private
        def set_product
            @product = Product.find(params[:product_id])
        end
end
