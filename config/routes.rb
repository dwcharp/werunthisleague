Rails.application.routes.draw do
  root 'league#index'
  # resources :teams do
  #   collection do
  #     get 'signup'
  #     post 'signup_confirm'  
  #   end
    
  # 	member do
  # 		post 'add_new_player'
  #     get  'roster_management'
  # 	end	
  # end

  # resources :players do
  # 	collection do
  #  	 get 'signup'
  #    post 'signup_confirm'
  # 	end
  # end
  get 'teams/signup', to: 'teams#signup'
  post 'teams/signup_confirm', to: 'teams#signup_confirm'

  get 'players/signup', to: 'players#signup'
  post 'players/signup_confirm', to: 'players#signup_confirm'
end
