Rails.application.routes.draw do

  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes/new', {:via => :get, :to => 'tomes#new'})
  match('tomes', {:via => :post, :to => 'tomes#create'})
  match('tomes/:id', {:via => :get, :to => 'tomes#show'})
  match('tomes/:id/edit', {:via => :get, :to => 'tomes#edit'})
  match('tomes/:id/', {:via => [:patch, :put], :to => 'tomes#update'})

  match('tomes/:id/chapters/new', {:via => :get, :to => 'chapters#new'})
  match('tomes/:id/chapters', {:via => :post, :to => 'chapters#create'})
  match('chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('chapters/:id/edit', {:via => :get, :to => 'chapters#edit'})
  match('chapters/:id/', {:via => [:patch, :put], :to => 'chapters#update'})

  match('tomes/:id/chapters/:id/lessons/new', {:via => :get, :to => 'lessons#new'})
  match('tomes/:id/chapters/:id/lessons', {:via => :post, :to => 'lessons#create'})
  match('tomes/:id/chapters/:id/lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id/', {:via => [:patch, :put], :to => 'lessons#update'})

end
