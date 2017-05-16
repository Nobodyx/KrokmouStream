Rails.application.routes.draw do
  resources :episodes

  resources :media, only: [:show] do
      resources :seasons, only: [:index]
  end
  resources :member_media
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Attachinary::Engine => "/attachinary"
    root to:"media#index"		
end