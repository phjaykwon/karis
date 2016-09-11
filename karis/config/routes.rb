Rails.application.routes.draw do

	get 'main/index'

	resources :chords

	root 'main#index' # routes root to main#index controller action
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
