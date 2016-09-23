Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # get '/patients', to: 'patients#index'
  # get '/patients/:id' to: 'patients#show'
  # post 'patients' to: 'patients#create'
  # patch '/patients/:id' to: 'patients#update'
  # delete '/patients/:id' to: 'patients#destroy'
  # in this case, to: is the same as =>

  resources :patients, only: [:index, :show, :create, :update, :destroy]
  resources :doctors, only: [:index, :show]
end
