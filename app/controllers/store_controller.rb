class StoreController < ApplicationController
  def index
    @products = Product.order(:title)  
  end

  def recent                                #key    #value
    @products = Product.limit(10).order(created_at: :desc)
  end
end