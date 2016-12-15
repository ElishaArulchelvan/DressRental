class ShopController < ApplicationController
  def index
  	@dresses = Dress.all
  end
end
