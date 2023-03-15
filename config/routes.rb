Rails.application.routes.draw do
  get 'employees/index'
  root "home#index"
  # custome routes define karne ke way.
 # get 'home/index'
 #get '/home' => 'home#index'
 
 resources :employees
 resources :documents

 #public/Custom pages Routes 
 get 'about'  => 'pages#about_us'
 get 'contact' => "pages#contact_us"
 get 'privacy_policy' => 'pages#privacy_policy'
 get 'terms_and_conditions' => 'pages#terms_and_conditions'
 
end
