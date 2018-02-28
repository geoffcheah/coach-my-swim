class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user_bookings = record.bookings
    coach = user_bookings.any? { |booking|  Lesson.find(booking.lesson_id).user_id = user }
    record == user || coach
  end
end
