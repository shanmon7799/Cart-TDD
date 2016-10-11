Rails.application.routes.draw do
  devise_for :users
	resources :products do
		member do
			put :add_to_cart
		end
  end

  resource :cart, only: [:show, :destroy] do
  	collection do
  		get :checkout
  	end
  end

  resources :orders, only: [:create]

  root "products#index"
end
