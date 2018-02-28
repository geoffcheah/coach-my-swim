class PagesController < ApplicationController
  def home
    @lessons = Lesson.take(4)
  end
end
