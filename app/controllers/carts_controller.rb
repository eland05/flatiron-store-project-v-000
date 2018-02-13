class CartsController < ApplicationController
  def show
   @cart = Cart.find(params[:id])
 end

 def checkout
   cart = Cart.find params[:id]
   cart.checkout
   cart.save
   current_user.remove_cart
   redirect_to cart_path
 end
end
