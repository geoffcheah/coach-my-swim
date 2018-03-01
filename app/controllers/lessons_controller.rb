class LessonsController < ApplicationController
  def index
    @lessons = policy_scope(Lesson).order(created_at: :desc)
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize @lesson
    if @lesson.save
      current_user.coach = true
      current_user.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
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
    params.require(:lesson).permit(:user_id, :price, :ability, :speciality, :bio)
  end
end
