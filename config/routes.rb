Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:new, :show, :index, :create, :edit, :update]
  resources :songs, only: [:new, :show, :index, :create, :edit, :update]
  resources :genres, only: [:new, :show, :index, :create, :edit, :update]
end
