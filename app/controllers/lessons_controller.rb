class LessonsController < ApplicationController
def index
  @lessons = policy_scope(Lesson).order(created_at: :desc)
end

def show
  @lesson = Lesson.find(params[:id])
  authorize @lesson
end

end
