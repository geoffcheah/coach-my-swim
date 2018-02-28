class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    create?
  end

  def edit?
    coach = record.lesson.user
    user == coach
  end

  def create?
    true
  end

  def show?
    swimmer = record.user
    coach = record.lesson.user
    user == swimmer || coach
  end

  def update?
    coach = record.lesson.user
    user == coach
  end
end
