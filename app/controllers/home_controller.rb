class HomeController < ApplicationController
  def index
    @promotion = Promotion.all
  end
end
