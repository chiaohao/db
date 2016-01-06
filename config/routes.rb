Rails.application.routes.draw do
  get 'customer/newcustomer'
  get 'customer' => 'customer#index'
  get 'customer/modify/:id' => 'customer#modify'
  get 'customer/delete/:id' => 'customer#delete'
  post 'customer/create'
  patch 'customer/updating/:id' => 'customer#updating'
  put 'customer/updating/:id' => 'customer#updating'
  put 'customer/destroying/:id' => 'customer#destroying'
  resources :customer

  get 'pretty/newpretty'
  get 'pretty' => 'pretty#index'
  get 'pretty/modify/:id' => 'pretty#modify'
  get 'pretty/delete/:id' => 'pretty#delete'
  post 'pretty/create'
  patch 'pretty/updating/:id' => 'pretty#updating'
  put 'pretty/updating/:id' => 'pretty#updating'
  put 'pretty/destroying/:id' => 'pretty#destroying'
  resources :pretty

  get 'pay_way/newpay_way'
  get 'pay_way' => 'pay_way#index'
  get 'pay_way/modify/:id' => 'pay_way#modify'
  get 'pay_way/delete/:id' => 'pay_way#delete'
  post 'pay_way/create'
  patch 'pay_way/updating/:id' => 'pay_way#updating'
  put 'pay_way/updating/:id' => 'pay_way#updating'
  put 'pay_way/destroying/:id' => 'pay_way#destroying'
  resources :pay_way

  get 'bento_order/newbento_order'
  get 'bento_order' => 'bento_order#index'
  get 'bento_order/modify/:id' => 'bento_order#modify'
  get 'bento_order/delete/:id' => 'bento_order#delete'
  post 'bento_order/create'
  patch 'bento_order/updating/:id' => 'bento_order#updating'
  put 'bento_order/updating/:id' => 'bento_order#updating'
  put 'bento_order/destroying/:id' => 'bento_order#destroying'
  resources :bento_order

  get 'pretty_ordership/newpo'
  get 'pretty_ordership' => 'pretty_ordership#index'
  get 'pretty_ordership/modify/:id' => 'pretty_ordership#modify'
  get 'pretty_ordership/delete/:id' => 'pretty_ordership#delete'
  post 'pretty_ordership/create'
  patch 'pretty_ordership/updating/:id' => 'pretty_ordership#updating'
  put 'pretty_ordership/updating/:id' => 'pretty_ordership#updating'
  put 'pretty_ordership/destroying/:id' => 'pretty_ordership#destroying'
  resources :pretty_ordership
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
