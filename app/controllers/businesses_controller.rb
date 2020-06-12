class BusinessesController < ApplicationController
  protect_from_forgery
  before_action :set_business, only: [:show, :update, :destroy]

  def index
    @businesses = Business.all
    render json: @businesses, include: :items
  end

  def show
    render json: @business, include: :items
  end

  def create
    @business = Business.new(business_params)
    @business.user_id = User.first.id

    if @business.save
      render json: @business, status: :created, location: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def update
    if @business.update(business_params)
      render json: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @business.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:name, :address, :city, :user_id)
    end
end
