class BookingsController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lesson = Lesson.find(params[:lesson_id])
    @booking.save
    authorize @booking
    redirect_to user_path(current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render "edit"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:description, :feedback)
  end

end
