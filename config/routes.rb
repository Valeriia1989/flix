Rails.application.routes.draw do
  devise_for :users
  get 'about' => 'movies#about'
  get 'movies/recommended/:placement' => 'movies#recommended'
  resources :movies
  resources :genres, only: :show
  root 'movies#index'

  # get 'films', to: redirect('/movies')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
