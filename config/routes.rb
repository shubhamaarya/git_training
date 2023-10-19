Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
                                                                         #get 'home' , to: "article#index"
  root 'articles#index'  

  # Defines the root path route ("/")
  # root "posts#index"
  # get "/welcome", to: "welcome#hello"
  #get "/articles", to: "articles#index"
  #get '/articles/:id', to: "articles#show"
  



  # get '/login' , to: "login#log"
  # get '/signup', to: "signup#sign"
  # delete 'articles/:id', to: 'articles#destroy',as:"delete_article"
  

  resources :articles do
    resources :comments
  end
end
