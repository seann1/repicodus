class TomesController < ApplicationController
  def index
    @tomes = Tome.all.sort_by { |i| i.number }
    render('tomes/index.html.erb')
  end

  def new
    @tome = Tome.new
    render('tomes/new.html.erb')
  end

  def create
    @tomes = Tome.all.sort_by { |i| i.number }
    @tome = Tome.new(:number => params[:number],
                     :description => params[:description])
    @tomes.each do |tome|
      if tome.number >= @tome.number
        Tome.update(tome.id, {:number => (tome.number += 1)})
      end
    end
    if @tome.save
      redirect_to('/tomes')
    else
      render('teachers/index.html.erb')
    end
  end

  def show
    @tome = Tome.find(params[:tome_id])
    render('tomes/show.html.erb')
  end

  def edit
    @tome = Tome.find(params[:tome_id])
    render('tomes/edit.html.erb')
  end

  def update
    @tome = Tome.find(params[:tome_id])
    if @tome.update(:id => params[:tome_id],
                    :description => params[:description],
                    :number => params[:number])
      redirect_to("/tomes/#{@tome.id}")
    else
      render('tomes/edit.html.erb')
    end
  end
end
