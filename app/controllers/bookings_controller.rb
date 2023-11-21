class BookingsController < ApplicationController
  before_action :find, only: %i[show destroy]
  before_action :find_dream, only: %i[new create]

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.dream = @dream
    if @booking.save
      redirect_to dream_path(@booking.dream)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to root
  end

  private

  def find
    @booking = Booking.find(params[:id])
  end

  def find_dream
    @dream = Dream.find(params[:dream_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :dream_id)
  end
end
