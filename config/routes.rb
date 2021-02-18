Rails.application.routes.draw do

  devise_for :users # deviseを設定したときに自動作成される
  root to: 'homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
