Rails.application.routes.draw do
  root 'application#index'
  get 'index' => 'application#index'
  get 'login' =>  'sessions#login_page'
  post 'login' => 'sessions#login'
  post 'register' => 'sessions#register'
  get 'logout' => 'sessions#logout'
  get 'new' => 'pages#new'
  get 'trending' => 'pages#trending'
  get 'discover' => 'pages#discover'
  post 'upload' => 'application#upload'
  post 'view_post' => 'pages#view_post'
  post 'view_post' => 'pages#view_post'
  post 'post_comment' => 'pages#post_comment'
  get 'like_post' => 'pages#like_post'
  post 'profile' => 'pages#profile'
  post 'subscribe' => 'pages#subscribe'
  post 'unsubscribe' => 'pages#unsubscribe'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
