class TeachersController < ApplicationController

  def index
    teacher_name = params[:name_input]
    if Teacher.valid_name?(teacher_name)
      @tomes = Tome.all
      render('teachers/index.html.erb')
    else
      @tomes = Tome.all
      render('tomes/index.html.erb')
    end
  end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end

end
