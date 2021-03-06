 Rails.application.routes.draw do
  devise_for :users
  get 'web/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'web#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'listing-category/office-get-together' => 'web#office_get_together'
  get 'listing-category/general-parties' => 'web#general_parties'
  get 'listing-category/pool_party' => 'web#pool_party'
  get 'host' => 'web#host'
  get '/web/register_user/', :controller => 'web', :action => 'register_user'
  post '/web/create_user/', :controller => 'web', :action => 'create_user'
  get '/web/sign_in_user', :controller => 'web', :action => "sign_in_user"
  get '/web/become_a_host', :controller => 'web', :action => "become_a_host"
  
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #  get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
