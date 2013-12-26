ShainaGates::Application.routes.draw do

  resources :artworks
  resources :admin

  root 'artworks#index'
  # get 'admin' => 'artworks#admin'
  post 'admin' => 'admin#index', as: 'sort_artworks'

end
