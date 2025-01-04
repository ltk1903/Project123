Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'web_content',  to: 'web_content#index'
    end
  end

  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }


  namespace :admin do
    root to: 'dashboard#index'
  end

  namespace :api do
    namespace :v1 do
      get 'web_content', to: 'web_content#index'
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'home#page'
end
