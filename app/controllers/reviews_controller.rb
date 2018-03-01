class ReviewsController < ApplicationController
  before_action :find_lesson, only: [:new, :create]

  def new
    @user = current_user
    @review = Review.new
    authorize @review
    if no_relationship?
      flash[:alert] = "You have never booked this coach before. Perhaps book em? :)"
      redirect_to(lesson_path(@lesson))
    else
      render :new
    end

  end

  def create
    @review = Review.new(review_params)
    @review.lesson = @lesson
    authorize @review
    if @review.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  private

  def find_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def no_relationship?
    @user.bookings.where(lesson_id: @lesson) == []
  end
end
