Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :home, only: [:index] do
  	collection do 
  		post :sort_string
  	end
  end
end
