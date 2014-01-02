ShainaGates::Application.routes.draw do

  resources :artworks

  get ':id' => 'artworks#lightbox', as: 'lightbox'
  root 'artworks#index'
  get 'admin' => 'artworks#admin'
  post 'admin' => 'artworks#admin', as: 'sort_artworks'

end
