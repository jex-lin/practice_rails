Rails.application.routes.draw do

  root 'welcome#index'

  resources :posts do    # 關聯的話就要這樣寫
    resources :comments
  end

  resources :animations do
    collection do
      get 'canvas'
    end
  end

# 這句在幫你建others的7個helper(但你後面only只要index, 不寫的話 update, show ... 都會生)
# :except index  => 除了 index
# collection : = others/abc
# member : others/1/abc
# namespace : 單純只想加一個無功能性的 url, 像是http://127.0.0.1:3000/dashboard/profile/verify,  dashboard就用namespace
# 解析以上 : dashboard 是 namespace, 也是多餘的   profile 是 controller
  resources :others, :only => [:index] do
    collection do
      get :show_env
      get :log
      get :rpi_cam
    end
  end
  get 'test' => 'test#index', :as => 'test'

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
