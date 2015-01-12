Rails.application.routes.draw do
  root 'teams#index'
  resources :teams do
  	collection do
  		post 'add_new_player'
  	end	
  end

  resources :players do
  	collection do
   	 get 'signup'
  	end
  end
end
