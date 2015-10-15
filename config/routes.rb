Rails.application.routes.draw do
  devise_for :users
  get 'carpools/index'

  root 'carpools#index'
end
