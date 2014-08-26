Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#show'})

  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
end
