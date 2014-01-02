ShainaGates::Application.routes.draw do

  resources :artworks do
    collection do
      get 'lightbox/:id' => 'artworks#lightbox', as: 'lightbox'
    end
  end
  
  root 'artworks#index'

  get 'admin' => 'artworks#admin'
  post 'admin' => 'artworks#admin', as: 'sort_artworks'

end
