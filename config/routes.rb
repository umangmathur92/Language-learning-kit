TestAppBeta::Application.routes.draw do
  
  root 'home#index'

  get "home/index"
  get "user/test_results"
  get "user/tests_given"
  get "author/question_by_author"
  get "teach/teach_tut"
  get "author/tutorials_by_author"
  get "author/exercise_by_author"
  resources :languages

  
  get "profile/viewtest"
  get "starttest/select_level"
  get "starttest/random_test"
  get "starttest/start"
  post "starttest/result"
  get "starttest/show_result"
  get "starttest/end_test"
  get "user/test_show_details"
  post "starttest/total_question"

  devise_for :users
  resources :options
 
  resources :questions
  resources :accept

  resources :addimages

  get "learn/index"
  get "learn/tutorial"
  get "learn/exercise"
  get "student/index"
  post "learn/myfunc"
  get "learn/output"
 resources :exercises

  resources :tutorials

  get '/tutorials/showbylanguage/:tutorial_id'=> "tutorials#showbylanguage"

  mount Ckeditor::Engine => '/ckeditor'

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
