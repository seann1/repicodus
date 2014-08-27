class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @chapter_id = params[:id]
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:id => params[:id],
                      :chapter_id => params[:chapter_id],
                      :description => params[:description],
                      :content => params[:content],
                      :number => params[:number])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end
end
