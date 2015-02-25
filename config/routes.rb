Rails.application.routes.draw do
  root 'league#index'
  resources :teams do
    collection do
      get 'signup'
      post 'signup_confirm'  
    end
    
  	member do
  		post 'add_new_player'
      get  'roster_management'
  	end	
  end

  resources :players do
  	collection do
   	 get 'signup'
     post 'signup_confirm'
  	end
  end
end
