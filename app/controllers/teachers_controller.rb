class TeachersController < ApplicationController
  def index
    @tomes = Tome.all
    render('teachers/index.html.erb')
  end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end
end
