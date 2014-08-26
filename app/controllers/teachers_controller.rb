class TeachersController < ApplicationController

  def index
    teacher_name = params[:name_input]
    if Teacher.valid_name?(teacher_name)
      @tomes = Tome.all
      render('teachers/index.html.erb')
    else
      @tomes = Tome.all
      redirect_to('tomes/index.html.erb')
    end
  end

  # def edit_tome
  #   new_description = params[:tome_description]
  #   @find_tome = Tome.find_by(params[:id])
  #   @tome = Tome.update(@find_tome.id, ({description: new_description}))
  #   render('teachers/index.html.erb')
  # end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end

end
