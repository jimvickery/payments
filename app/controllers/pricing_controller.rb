class PricingController < ApplicationController
  def show 
    @plans = Plan.all
  end
end
