Rails.application.routes.draw do

post 'advertisements/:id' => 'comments#create'

resources :advertisements, only: [:index, :create, :show, :new, :update, :destroy]

  get 'users/home' => 'users#home'
  get 'users/login' => 'users#login'
  delete 'users/login' => 'users#logout'
  post 'users/login' => 'users#check'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
