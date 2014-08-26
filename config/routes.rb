Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#index'})
  match('tomes', {:via => :get, :to => 'tomes#show'})

  match('lessons/:id', {:via => :get, :to => 'lessons#show'})

  match('/teachers', {:via => :get, :to => 'teachers#index'})
  match('/teachers', {:via => :post, :to => 'teachers#edit_tome'})

  match('tomes/new', {:via => :get, :to => 'tomes#new'})

  match('lessons/:id/edit', {:via => :post, :to => 'lessons#edit'})

end
