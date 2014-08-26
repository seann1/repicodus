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
    @tome = Tome.create(:number => params[:name],
                        :description => params[:description])
    redirect_to('/teachers')
  end

  def show
    @tome = Tome.find(params[:id])
    render('tomes/show.html.erb')
  end
end
