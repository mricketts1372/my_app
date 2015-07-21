Rails.application.routes.draw do

      devise_for :users
root 'home#index'


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

