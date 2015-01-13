Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'agency' => 'contact#index', industry: 'agency'
  get 'advertiser' => 'contact#index', industry: 'advertiser'
  get 'automotive' => 'contact#index', industry: 'automotive'
  get 'confirm' => 'contact#confirm'
  get 'agency/confirm' => 'contact#confirm', webinar: 'true'
  get 'advertiser/confirm' => 'contact#confirm', webinar: 'true'
  get 'automotive/confirm' => 'contact#automotive_confirm', webinar: 'true'

  get 'contact/:lead_src' => 'contact#index'

  get 'creatives' => 'welcomeone#index'
  get 'tech' => 'tandr#index'

  get 'section1' => 'section1#index'
  get 'section2' => 'section2#index'
  get 'section3' => 'section3#index'

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
