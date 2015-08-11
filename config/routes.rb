Rails.application.routes.draw do
  # Routes for the Interlevel resource:
      devise_for :users
root 'home#index'

  # CREATE
  get "/interlevels/new", :controller => "interlevels", :action => "new"
  post "/create_interlevel", :controller => "interlevels", :action => "create"

  # READ
  get "/interlevels", :controller => "interlevels", :action => "index"
  get "/interlevels/:id", :controller => "interlevels", :action => "show"

  # UPDATE
  get "/interlevels/:id/edit", :controller => "interlevels", :action => "edit"
  post "/update_interlevel/:id", :controller => "interlevels", :action => "update"

  # DELETE
  get "/delete_interlevel/:id", :controller => "interlevels", :action => "destroy"


# Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"

  # Routes for the Point resource:
  # CREATE
  get "/points/new", :controller => "points", :action => "new"
  post "/create_point", :controller => "points", :action => "create"

  # READ
  get "/points", :controller => "points", :action => "index"
  get "/points/:id", :controller => "points", :action => "show"

  # UPDATE
  get "/points/:id/edit", :controller => "points", :action => "edit"
  post "/update_point/:id", :controller => "points", :action => "update"

  # DELETE
  get "/delete_point/:id", :controller => "points", :action => "destroy"
  #------------------------------

  # Routes for the Score resource:
  # CREATE
  get "/scores/new", :controller => "scores", :action => "new"
  post "/create_score", :controller => "scores", :action => "create"

  # READ
  get "/scores", :controller => "scores", :action => "index"
  get "/scores/:id", :controller => "scores", :action => "show"

  # UPDATE
  get "/scores/:id/edit", :controller => "scores", :action => "edit"
  post "/update_score/:id", :controller => "scores", :action => "update"

  # DELETE
  get "/delete_score/:id", :controller => "scores", :action => "destroy"

  # Routes for the Player resource:
  # CREATE
  get "/players/new", :controller => "players", :action => "new"
  post "/create_player", :controller => "players", :action => "create"

  # READ
  get "/players", :controller => "players", :action => "index"
  get "/players/:id", :controller => "players", :action => "show"

  # UPDATE
  get "/players/:id/edit", :controller => "players", :action => "edit"
  post "/update_player/:id", :controller => "players", :action => "update"

  # DELETE
  get "/delete_player/:id", :controller => "players", :action => "destroy"
  #------------------------------

get('/learn/basics', { :controller => 'learn', :action => 'basics' })
   get('/learn/beginner_code', { :controller => 'learn', :action =>  'beginner_code' })
    get('/game/play_beginner/:question_number', { :controller => 'game', :action => 'play_beginner' })
     get('/learn/intermediate_code', { :controller => 'learn', :action => 'intermediate_code' })
     get('/learn/advance_code', { :controller => 'learn', :action => 'advance_code' })
 get('/score/scoreboard', { :controller => 'score', :action => 'scoreboard' })
get('/game/play_beginner', { :controller => 'game', :action => 'play_beginner' })
get('/game/play_rules', { :controller => 'game', :action => 'play_rules' })
get('/game/play_intermediate', { :controller => 'game', :action => 'play_intermediate' })
  get('/game/play_advance', { :controller => 'game', :action => 'play_advance' })
end

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

