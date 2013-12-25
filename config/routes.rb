ShainaGates::Application.routes.draw do

  resources :artworks

  root 'artworks#index'
  get 'admin' => 'artworks#admin'
  post 'admin' => 'artworks#admin', as: 'sort_artworks'

end
