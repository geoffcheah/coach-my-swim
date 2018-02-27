class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end



def show
  return true
end



end
