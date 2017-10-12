Rails.application.routes.draw do
  get '/26ca1c534cf26cc7b2d53a3be06cd663.txt' => 'mindapp#index'
  post ':controller(/:action(/:id))(.:format)'
  get ':controller(/:action(/:id))(.:format)'
  get '/logout' => 'sessions#destroy', :as => 'logout'
  get '/auth/failure' => 'sessions#failure'
  get '/auth/:provider/callback' => 'sessions#create'
  post '/auth/:provider/callback' => 'sessions#create'
  resources :sessions
  resources :identities
  mount Ckeditor::Engine => '/ckeditor'
  root :to => 'mindapp#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
