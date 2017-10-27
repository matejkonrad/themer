Rails.application.routes.draw do
  resources :landings, except: [:show]
  get ':landing_code', to: 'landings#show'

  root 'home#index'
end
