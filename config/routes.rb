Rails.application.routes.draw do

  resources :clicks
  get 'contacts/create'
  

  devise_for :users, controllers: { registrations: "registrations" , confirmations: 'confirmations'}

  resources :users, only: [:show, :edit, :update]

  #get 'home/index'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get "/quieroserliker", to: "static_pages#soyliker", as: "soyliker"

  get "/formulariomovil", to: "static_pages#formulariomovil", as: "formulariomovil"

  get "/ups", to: "static_pages#ups", as: "ups"

  get "/videoprueba", to: "static_pages#dictiontest", as: "dictiontest"

  get "/FAQ", to: "static_pages#FAQ", as: "FAQ"

  get "/FAQ_likeu", to: "static_pages#FAQ_likeu", as: "FAQ_likeu"

  resources :contacts

  get "/terminos", to: "static_pages#terminos", as: "terminos"

  

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
