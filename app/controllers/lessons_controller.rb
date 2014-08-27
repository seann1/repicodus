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
    @lesson_id = params[:id]
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:id => params[:id],
                      :chapter_id => params[:chapter_id],
                      :description => params[:description],
                      :content => params[:content],
                      :number => params[:number])
      redirect_to("tomes/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end

  def new
   @lesson = Lesson.new
   render('lessons/new.html.erb')
  end

  def create
    @chapter_id = params[:id]
    @lessons = Lesson.all.sort_by { |i| i.number }
    @lesson = Lesson.new(:chapter_id => @chapter_id,
                         :description => params[:description],
                         :content => params[:content],
                         :number => params[:number])
    @lessons.each do |lesson|
      if lesson.number >= @lesson.number
        Lesson.update(lesson.id, {:number => (lesson.number += 1)})
      end
    end
    if @lesson.save
      redirect_to('/tomes')
    else
      render('tomes/index.html.erb')
    end
  end

end
