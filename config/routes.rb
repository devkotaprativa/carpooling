Rails.application.routes.draw do
  get 'carpool/index'

  root 'carpool#index'
end
