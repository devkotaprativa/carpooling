Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/create'

  get 'posts/show'

  get 'posts/destroy'

  devise_for :users
   resources :users do
     resources :posts
   end
  get 'carpools/index'

  root 'carpools#index'

end
