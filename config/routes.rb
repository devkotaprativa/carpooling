Rails.application.routes.draw do

  

  resources :pools
  devise_for :users
  resources :users do
       resources :posts #do
    #   post "/pool" => "posts#pool"
    # end
  end
  # get 'carpools/index'

  devise_scope :user do
  authenticated :user do
    root :to => 'posts#index'
  end
  unauthenticated :user do
    root :to => 'carpools#index', as: :unauthenticated_root

end
end
end