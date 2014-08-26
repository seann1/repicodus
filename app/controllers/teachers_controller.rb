class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render('teachers/index.html.erb')
  end

  def show
    @teacher = Teacher.find(params[:id])
    render('teachers/show.html.erb')
  end
end
