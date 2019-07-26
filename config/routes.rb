# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :memberships, :examples,
            :users, except: %i[new edit]
  resources :groups, except: %i[new]

  # Custom routes
  get '/users' => 'users#index'

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
