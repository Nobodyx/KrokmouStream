Rails.application.routes.draw do
<<<<<<< HEAD
  resources :episodes
  resources :seasons
  resources :media
  resources :member_media
  resources :members
=======
>>>>>>> e3ddc5618b1dab96a996f6404324a926ab38c2b0
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Attachinary::Engine => "/attachinary"
end
