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

  private

  def booking_params
    params.require(:booking).permit(:description)
  end

end
