class LessonsController < ApplicationController
def index
  @lessons = policy_scope(Lesson).order(created_at: :desc)
end

end
