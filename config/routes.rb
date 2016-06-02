Rails.application.routes.draw do

  get "/", :controller => "tubings", :action => "index"

  # Routes for the Packer resource:
  # CREATE
  get "/packers/new", :controller => "packers", :action => "new"
  post "/create_packer", :controller => "packers", :action => "create"

  # READ
  get "/packers", :controller => "packers", :action => "index"
  get "/packers/:id", :controller => "packers", :action => "show"

  # UPDATE
  get "/packers/:id/edit", :controller => "packers", :action => "edit"
  post "/update_packer/:id", :controller => "packers", :action => "update"

  # DELETE
  get "/delete_packer/:id", :controller => "packers", :action => "destroy"
  #------------------------------

  # Routes for the Safety_valve resource:
  # CREATE
  get "/safety_valves/new", :controller => "safety_valves", :action => "new"
  post "/create_safety_valve", :controller => "safety_valves", :action => "create"

  # READ
  get "/safety_valves", :controller => "safety_valves", :action => "index"
  get "/safety_valves/:id", :controller => "safety_valves", :action => "show"

  # UPDATE
  get "/safety_valves/:id/edit", :controller => "safety_valves", :action => "edit"
  post "/update_safety_valve/:id", :controller => "safety_valves", :action => "update"

  # DELETE
  get "/delete_safety_valve/:id", :controller => "safety_valves", :action => "destroy"
  #------------------------------

  # Routes for the Coupling resource:
  # CREATE
  get "/couplings/new", :controller => "couplings", :action => "new"
  post "/create_coupling", :controller => "couplings", :action => "create"

  # READ
  get "/couplings", :controller => "couplings", :action => "index"
  get "/couplings/:id", :controller => "couplings", :action => "show"

  # UPDATE
  get "/couplings/:id/edit", :controller => "couplings", :action => "edit"
  post "/update_coupling/:id", :controller => "couplings", :action => "update"

  # DELETE
  get "/delete_coupling/:id", :controller => "couplings", :action => "destroy"
  #------------------------------

  # Routes for the Tubing resource:
  # CREATE
  get "/tubings/new", :controller => "tubings", :action => "new"
  post "/create_tubing", :controller => "tubings", :action => "create"

  # READ
  get "/tubings", :controller => "tubings", :action => "index"
  get "/tubings/:id", :controller => "tubings", :action => "show"

  # UPDATE
  get "/tubings/:id/edit", :controller => "tubings", :action => "edit"
  post "/update_tubing/:id", :controller => "tubings", :action => "update"

  # DELETE
  get "/delete_tubing/:id", :controller => "tubings", :action => "destroy"
  #------------------------------

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
