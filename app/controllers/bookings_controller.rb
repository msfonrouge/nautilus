class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @yacht = Yacht.find(params[:yacht_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @yacht = Yacht.find(params[:yacht_id])
    @booking.yacht_id = @yacht.id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_bookings
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status, :yacht_id, :user_id)
  end
end
