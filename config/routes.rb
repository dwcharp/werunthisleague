Rails.application.routes.draw do
  root 'league#index'

  #sessions
  resources :sessions

  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'team_management' => 'teams#team_management'

  resources :teams do
    resources :players

    collection do
      get 'signup'
      post 'signup_confirm'  
    end
    
  	member do
  		post 'add_new_player'
  	end	
  end

  resources :players do
  	collection do
   	 get 'signup'
     post 'signup_confirm'
  	end
  end
end
