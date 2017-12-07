class ServicesController < ApplicationController
  def show
    @promotions = Promotion.all.order("created_at")
    render params[:service]
  end
end
