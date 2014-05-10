Homeflix::Application.routes.draw do
  root to: "main#index"
  
  # User routes
  get '/users' => 'users#index'

  # Movie routes 
  get '/movies' => 'movies#index'
  get '/movies/last' => 'movies#last'
  get '/movies/:key' => 'movies#search'

  # Favorit routes
  get 'favorits/:user_id' => 'favorits#index'
  get 'favorits/:user_id/:imdb_id' => 'favorits#show'
  delete 'favorits/:user_id/:imdb_id' => 'favorits#destroy'
  post 'favorits/:user_id/:imdb_id' => 'favorits#create'

  # IMDB routes 
  get '/imdb' => 'imdb#index'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:


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
