ShainaGates::Application.routes.draw do
	resources :curriculum_vitaes

  resources :artworks
  resources :exhibitions

  root 'artworks#index'

  get 'admin' => 'artworks#admin'
  post 'admin' => 'artworks#admin', as: 'sort_artworks'
end
