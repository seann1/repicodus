class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
    render('chapters/index.html.erb')
  end

  def new
    @tome = Tome.find(params[:tome_id])
    @chapter = Chapter.new
    render('chapters/new.html.erb')
  end

  def create
    @tome_id = params[:tome_id]
    @chapter = Chapter.new(:number => params[:number],
                           :tome_id => @tome_id,
                           :description => params[:description])
    if @chapter.save
      redirect_to('/')
    else
      render('tomes/index.html.erb')
    end

  end

  def show
    @tome = Tome.find(params[:tome_id])
    @chapter = Chapter.find(params[:chapter_id])
    render('chapters/show.html.erb')
  end

  def edit
    @tome_id = params[:tome_id]
    @chapter = Chapter.find(params[:chapter_id])
    render('chapters/edit.html.erb')
  end

  def update
    @tome_id = params[:tome_id]
    @chapter = Chapter.find(params[:chapter_id])
    if @chapter.update(:id => params[:chapter_id],
                      :tome_id => params[:tome_id],
                      :description => params[:description],
                      :number => params[:number])
      redirect_to("/tomes/#{@tome_id}/chapters/#{@chapter.id}")
    else
      render('chapters/edit.html.erb')
    end
  end

  def destroy
    @chapter = Chapter.find(params[:chapter_id])
    @chapter.destroy
    redirect_to('/')
  end
end
