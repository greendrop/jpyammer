Jpyammer::Application.routes.draw do
  get 'yammer/users',
    :to => 'yammer/users#index',
    :as => 'yammer_users'
  get 'yammer/users/:id',
    :to => 'yammer/users#show',
    :as => 'show_yammer_users'

  get 'yammer/groups',
    :to => 'yammer/groups#groups',
    :as => 'yammer_groups'

  get 'yammer/messages/my_feed',
    :as => 'my_feed_yammer_messages'
  get 'yammer/messages/private',
    :as => 'private_yammer_messages'
  get 'yammer/messages/company_feed',
    :as => 'company_feed_yammer_messages'
  get 'yammer/messages/in_group/:id',
    :to => 'yammer/messages#in_group',
    :as => 'in_group_yammer_messages'
  get 'yammer/messages/in_thread/:id',
    :to => 'yammer/messages#in_thread',
    :as => 'in_thread_yammer_messages'
  get 'yammer/messages/new',
    :to => 'yammer/messages#new',
    :as => 'new_yammer_messages'
  post 'yammer/messages',
    :to => 'yammer/messages#create'

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  get 'home/index'

  root :to => 'home#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
