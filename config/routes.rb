Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres, except: :destroy
  resources :artists, except: :destroy
  resources :songs, except: :destroy
end
