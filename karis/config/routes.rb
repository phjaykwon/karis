Rails.application.routes.draw do

  devise_for :users
	get 'main/index'

	get 'about', to: 'about#index'

	resources :chords

	root 'main#index' # routes root to main#index controller action
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

