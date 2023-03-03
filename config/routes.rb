Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'

  root 'tweets#index'  # 追加


  devise_for :users
  resources :tweets  # 追加
  resources :users  # 追加
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end