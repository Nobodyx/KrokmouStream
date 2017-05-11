Rails.application.routes.draw do
  resources :episodes
  resources :seasons
  resources :media
  resources :member_media
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Attachinary::Engine => "/attachinary"
    root to:"media#index"
		
end
