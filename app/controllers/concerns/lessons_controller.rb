class LessonsController < ApplicationController
  def show
    @lesson = Lesson.where(params[:id])
    render('lessons/show.html.erb')
  end
end
