Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#show'})
  match('tomes/:id/chapters/:id/lessons/:id', {:via => :get, :to => 'lessons#show'})
end
