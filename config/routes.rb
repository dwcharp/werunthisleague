Rails.application.routes.draw do
  root 'league#index'
  resources :teams do
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
