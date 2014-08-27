Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#show'})

  match('lessons/:id', {:via => :get, :to => 'lessons#show'})

  match('tomes/new', {:via => :get, :to => 'tomes#new'})
  match('tomes', {:via => :post, :to => 'tomes#create'})

  match('lessons/:id/edit', {:via => :post, :to => 'lessons#edit'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})

end
