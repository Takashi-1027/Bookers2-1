Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update, :index] do
  end
  #get 'users/show'
  #get 'users/index'
  #get 'users/edit'
  #get 'users/update'
  devise_for :users
  # deviseを設定したときに自動作成される
  root to: 'homes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
