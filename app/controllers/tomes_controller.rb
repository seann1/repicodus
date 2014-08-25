class TomesController < ApplicationController
  def index
    @tomes = Tome.all
    render('tomes/index.html.erb')
  end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end
end
