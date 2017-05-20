Rails.application.routes.draw do
  resources :episodes
<<<<<<< HEAD
  resources :member_media, only: [:index, :show, :update]
  resources :media, only: [:show] do
      resources :seasons, only: [:index]
      resources :member_media, only: [:new]
  end
    
  namespace :api_v1 do
    resources :episodes, only: [:index :show]
    resources :episodes, only: [:index, :show]
  end
    
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Attachinary::Engine => "/attachinary"
    root to:"media#index"
end
