class TomesController < ApplicationController
  def index
    @tomes = Tome.all
    render('tomes/index.html.erb')
  end

  def new
    @tome = Tome.new
    render('tomes/new.html.erb')
  end

  def create
    @tomes = Tome.all
    @tome = Tome.new(:number => params[:number],
                     :description => params[:description])
    if @tome.save
      redirect_to('/tomes')

    else
      render('teachers/index.html.erb')
    end
  end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end
end
