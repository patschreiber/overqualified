Overqualified::Application.routes.draw do
  devise_for :users

  devise_scope :user do 
    match '/signup' => 'devise/registrations#new', via: 'get', :as => :signup
    match '/sign-up' => 'devise/registrations#new', via: 'get'
    match '/sign_up' => 'devise/registrations#new', via: 'get'

    match '/signin' => 'devise/sessions#new', via: 'get', :as => :signin
    match '/sign-in' => 'devise/sessions#new', via: 'get'
    match '/sign_in' => 'devise/sessions#new', via: 'get'

    match '/logout' => 'devise/sessions#destroy', via: 'delete', :as => :logout
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing_page#index'
  match '/lookbook' => 'pages#lookbook', via: 'get', :as => :lookbook
  match '/about-us' => 'pages#about', via: 'get', :as => :about
  match '/terms-of-use' => 'pages#terms', via: 'get', :as => :terms
  get 'contact_us' => 'pages#contact_us', :as => :contact_us
  

  match '/shop' => 'shop#index', via: ['get', 'post'], :as => :shop
  match '/new' => 'shop#new', via: ['get', 'post'], :as => :shop_new
  match '/gents' => 'shop#gents', via: ['get', 'post'], :as => :shop_gents
  match '/gals' => 'shop#gals', via: ['get', 'post'], :as => :shop_gals
  match '/one-of-a-kinds' => 'shop#uniques', via: ['get', 'post'], :as => :shop_uniques

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
