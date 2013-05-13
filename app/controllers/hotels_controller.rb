class HotelsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]


  def index
     @hotels = Hotel.all.sort_by{|h| -h.average_rating}
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def create
    @hotel = Hotel.new(params[:hotel])
    if @hotel.save
      redirect_to @hotel, notice: "Hotel was successfully created."
    else
      render "new"
    end
  end

  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update_attributes(params[:hotel])
      redirect_to @hotel, notice: "Hotel was successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_url
  end
end