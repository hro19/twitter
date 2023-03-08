Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'favorites/create'
  get 'favorites/destroy'

  root 'tweets#index'


  devise_for :users
  resources :tweets do
    resource :favorite, only:[:create, :destroy]
  end


  resources :users  # 追加
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end