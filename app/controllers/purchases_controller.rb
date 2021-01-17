class PurchasesController < ApplicationController
 before_action :set_product
#  skip_before_action :authenticate_user!, :only => [:index,:show, :create]


  def show
    @payment_intent = Stripe::PaymentIntent.create({
      amount: @product.amount,
      currency: 'usd',
    })
    # render :layout => false
  end

  def create
    @payment_intent = Stripe::PaymentIntent.retrieve(params[:payment_intent_id])
    # byebug
  end


  private
  def set_product
    @product = Product.find(params[:product_id])
    # @product = Product.find(1)
  end
 
end