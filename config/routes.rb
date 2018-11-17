Rails.application.routes.draw do
  root to: 'home#show'
  get 'home/show'
  get 'home/index'

  get '/auth/:provider/callback', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
