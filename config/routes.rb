Rails.application.routes.draw do

  devise_for :users
	get 'main/index'

	get 'about', to: 'about#index'

	get 'blog', to: 'blog#index'

	get 'artist', to: 'artist#index'

	resources :chords

  	get 'my_chords', to: 'my_chords#index'

  	get 'favorites', to: 'favorites#index'

	root 'main#index' # routes root to main#index controller action
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
