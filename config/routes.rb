require 'api_constraints'

Rails.application.routes.draw do
  resources :project_statuses
  resources :fund_sources
  resources :project_classifications
  root 'static_pages#home'

  get '/admin_panel' => 'static_pages#admin_panel'
  get '/report' => 'static_pages#report'
  get '/result' => 'static_pages#result'
  get '/analytics' => 'static_pages#analytics'

  devise_for :users
  resources :projects do
    resources :project_phases
    resources :project_components
    resources :project_images
  end
  resources :users
  resources :universities do
    collection do
      match 'search' => 'universities#search', via: [:get, :post], as: :search
    end
  end
  resources :static_pages do
    collection do
      match 'search' => 'static_pages#search', via: [:get, :post], as: :search
      match 'search_report' => 'static_pages#search_report', via: [:get, :post], as: :search_report
      match 'search_analytics' => 'static_pages#search_analytics', via: [:get, :post], as: :search_analytics
      match 'search_users' => 'static_pages#search_users', via: [:get, :post], as: :search_users
    end
  end

  namespace :api do
    api version: 1, module: 'v1' do
      resources :sessions, only: [:create]
      resources :universities, only: [:index, :show]
      resources :projects, only: [:index, :show] do
        resources :project_components, only: [:index, :show]
        resources :project_phases, only: [:index, :show]
        resources :project_images, only: [:index, :show]
      end
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
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
