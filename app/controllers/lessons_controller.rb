class LessonsController < ApplicationController
  def index
    @lessons = policy_scope(Lesson).order(created_at: :desc)
  end

  def show
    @lesson = Lesson.find(params[:id])
    @reviews = Review.where(lesson_id: @lesson)
    authorize @lesson
  end

  def edit
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def update
    @lesson = Lesson.find(params[:id])
    authorize @lesson
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render "edit"
    end
  end

  def lesson_params
    params.require(:lesson).permit(:price, :ability, :speciality, :bio)
  end
end
