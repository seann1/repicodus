Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes/:id', {:via => :get, :to => 'tomes#show'})
  match('tomes/:id/edit', {:via => :get, :to => 'tomes#edit'})
  match('tomes/:id/', {:via => [:patch, :put], :to => 'tomes#update'})

  match('tomes/new', {:via => :get, :to => 'tomes#new'})
  match('tomes', {:via => :post, :to => 'tomes#create'})

  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id/', {:via => [:patch, :put], :to => 'lessons#update'})

end
