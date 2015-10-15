Rails.application.routes.draw do
  get 'carpools/index'

  root 'carpools#index'
end
