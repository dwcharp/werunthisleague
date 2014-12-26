Rails.application.routes.draw do
  resources :teams
  # root 'team#index'
  root 'teams#index'

end
