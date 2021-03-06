Rails.application.routes.draw do
  resources :episodes
  resources :member_media, only: [:index, :show, :update, :destroy]
  resources :media, only: [:index, :show] do
    resources :seasons, only: [:index]
    resources :member_media, only: [:new]
  end

  # Routes de notre API correspondant aux User Stories
  namespace :api_v1 do
    resources :media, only: [:index, :show]
    resources :member_media, only: [:index, :show, :update]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
  root to:"media#index"
end
