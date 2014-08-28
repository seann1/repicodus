Rails.application.routes.draw do

  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes/new', {:via => :get, :to => 'tomes#new'})
  match('tomes', {:via => :post, :to => 'tomes#create'})
  match('tomes/:tome_id', {:via => :get, :to => 'tomes#show'})
  match('tomes/:tome_id/edit', {:via => :get, :to => 'tomes#edit'})
  match('tomes/:tome_id/', {:via => [:patch, :put], :to => 'tomes#update'})
  match('tomes/:tome_id/destroy', {:via => :delete, :to => 'tomes#destroy'})

  match('tomes/:tome_id/chapters/new', {:via => :get, :to => 'chapters#new'})
  match('tomes/:tome_id/chapters', {:via => :post, :to => 'chapters#create'})
  match('tomes/:tome_id/chapters/:chapter_id', {:via => :get, :to => 'chapters#show'})
  match('tomes/:tome_id/chapters/:chapter_id/edit', {:via => :get, :to => 'chapters#edit'})
  match('tomes/:tome_id/chapters/:chapter_id/', {:via => [:patch, :put], :to => 'chapters#update'})
  match('tomes/:tome_id/chapters/:chapter_id/destroy', {:via => :delete, :to => 'chapters#destroy'})

  match('tomes/:tome_id/chapters/:chapter_id/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('tomes/:tome_id/chapters/:chapter_id/lessons', {:via => :post, :to => 'lessons#create'})
  match('tomes/:tome_id/chapters/:chapter_id/lessons/:lesson_id', {:via => :get, :to => 'lessons#show'})
  match('tomes/:tome_id/chapters/:chapter_id/lessons/:lesson_id/edit', {:via => :get, :to => 'lessons#edit'})
  match('tomes/:tome_id/chapters/:chapter_id/lessons/:lesson_id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('tomes/:tome_id/chapters/:chapter_id/lessons/:lesson_id/destroy', {:via => :delete, :to => 'lessons#destroy'})

end
