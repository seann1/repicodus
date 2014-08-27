class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
    render('lessons/show.html.erb')
  end

  def edit
    @tome_id = params[:tome_id]
    @chapter_id = params[:chapter_id]
    @lesson_id = params[:lesson_id]
    @lesson = Lesson.find(params[:lesson_id])
    render('lessons/edit.html.erb')
  end

  def update
    @tome_id = params[:tome_id]
    @chapter_id = params[:chapter_id]
    @lesson_id = params[:lesson_id]
    @lesson = Lesson.find(params[:lesson_id])
    if @lesson.update(:id => params[:lesson_id],
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
    @chapter_id = params[:chapter_id]
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
