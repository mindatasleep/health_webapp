Rails.application.routes.draw do
  resources :athletes
  root to: 'pages#home'

  get '/snowflake/', to: 'snowflake#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
