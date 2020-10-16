Rails.application.routes.draw do
 
  
#  devise_for :cgmusers
#  resources :contacts
  resources :pages
  
   root 'pages#home'
   get 'home' => 'pages#home'
   get 'bio_and_resume' => 'pages#bio_resume'
   get 'bio_and_resume/goals' => 'pages#goals'
   get 'bio_and_resume/my_resumes' => 'pages#my_resumes'
   get 'bio_and_resume/our_facebook_page' => 'pages#our_business_facebook_page'
   get 'bio_and_resume/portfolios' => 'pages#portfolios'
   get 'bio_and_resume/professional_bio' => 'pages#professional_bio'
   get 'bio_and_resume/web_presence' => 'pages#web_presence'
   get 'bio_and_resume/skills' => 'pages#skills'
   get 'index_temp' => 'pages#index_temp'
   #get '/cgmusers/sign_out'  => 'devise/sessions#destroy'
   get 'pages/download_file'


  ##  devise_scope :cgmuser do 
  ###    get "/cgmusers/sign_out" => "devise/sessions#destroy" 
   ## end 
   
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
