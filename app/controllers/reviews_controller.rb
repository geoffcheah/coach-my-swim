class ReviewsController < ApplicationController
  before_action :find_lesson, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
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
end
