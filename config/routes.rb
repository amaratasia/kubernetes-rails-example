require 'sidekiq/web'

Rails.application.routes.draw do
  
    mount Sidekiq::Web => '/sidekiq'
  root 'pages#home'
end