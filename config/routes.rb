Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
end
