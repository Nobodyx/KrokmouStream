Rails.application.routes.draw do
  resources :episodes
  resources :member_media
  resources :media, only: [:show] do
      resources :seasons, only: [:index]      
      resources :member_media, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Attachinary::Engine => "/attachinary"
    root to:"media#index"		
end