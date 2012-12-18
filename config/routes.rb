Offerspostdeck::Application.routes.draw do
  resources :decks do
  	collection { post :import }
  end

  resources :perves

  resources :post_decks do as_routes end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "decks#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
