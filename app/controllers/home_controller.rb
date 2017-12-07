class HomeController < ApplicationController
  def index
    @promotions = Promotion.all.order("created_at")
  end
end
