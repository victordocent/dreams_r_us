class BookingsController < ApplicationController
  before_action :find, only: %i[show destroy edit update]
  before_action :find_dream, only: %i[new create edit update show]

  def index
    user = current_user.id
    @bookings = Booking.where(:user_id => user)
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    # "We extracted start and end date from the range"
    options= {}
    dates = booking_params[:start_date].split(" to ")
    date_start= dates[0]
    date_end= dates[1]
    params= {start_date: date_start, end_date: date_end}
    @booking = Booking.new(params)
    @booking.user = current_user
    @booking.dream = @dream
    if @booking.save
      redirect_to dream_booking_path(@dream, @booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    dates = booking_params[:start_date].split(" to ")
    date_start= dates[0]
    date_end= dates[1]
    params= {start_date: date_start, end_date: date_end}
    @booking.update(params)
  end


  def destroy
    @booking.destroy
    redirect_to root_path, status: :see_other
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
