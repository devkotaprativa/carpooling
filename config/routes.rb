Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resources :posts
  end
  get 'carpools/index'

  root 'posts#index'

end
