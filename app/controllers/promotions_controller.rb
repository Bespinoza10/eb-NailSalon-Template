class PromotionsController < ApplicationController
  before_action :find_promotion, only: [:show, :edit, :update, :destroy]
  def index
    @promotions = Promotions.all.order("created_at")
  end

  def new
    @promotion = Promotion.new
  end

  def create
    @promotion = Promotion.new promotion_params
    if @promotion.save
      redirect_to @promotion, notice: "You sucessfully created your promotion."
    else
      render 'new', notice: "Yikes! Something went wrong. Please try again."
    end
  end

  def show

  end

  def edit
  end

  def update
    if @promotion.update promotion_params
      redirect_to @promotion, notice: "You have sucessfully updated your promotion."
    else
      render 'edit'
    end
  end

  def destroy
    @promotion.destroy
    redirect_to promotion_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:title, :description, :modal_yes_no, :topbar_yes_no)
  end

  def find_promotion
    @promotion = Promotion.find(params[:id])
  end
end
