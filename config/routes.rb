Rails.application.routes.draw do
#  get 'admin/show'
  get "carts/:id/show" => 'carts#show'

  get 'admin/delete_user/:id'=>'admin#delete_user'

  post 'buys/write'

  post 'buys/write_complete'

  get 'comments/comments_category'

  get 'comments/show'

  get 'comments/write'

  post 'comments/write_complete'

  get 'comments/edit/:id'=>'comments#edit'

  post 'comments/edit_complete'
  
  get "comments/delete_complete/:id" =>'comments#delete_complete'

  resources :line_items
  resources :carts
  get 'market/index'
  get 'comments/index'

  post 'line_items/create'
  
  get 'users/signup'

  post 'users/signup_complete'

  get 'users/login'

  post 'users/login_complete'

  get 'users/logout_complete'

  post 'users/buy'
  root 'products#posts'

  get "/:category"=>'products#posts_category'

  get "products/show/:id"=>'products#show'
  get "comments/look/:id"=>'comments#look'
  get 'products/write'

  post 'products/write_complete'

  get "products/edit/:id" => 'products#edit'

  post 'products/edit_complete'

  get "products/delete_complete/:id"=>'products#delete_complete'

  post "products/write_review_complete"
  get "products/delete_review_complete/:id" => 'products#delete_review_complete'
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
