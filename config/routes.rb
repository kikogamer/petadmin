require 'sidekiq/web'

Rails.application.routes.draw do

  get 'campaign_clients/:token/opened', to: 'campaign_clients#opened'

  namespace :admin do
    resources :schedulings
    resources :client_addresses
    resources :sells
    resources :suppliers
    resources :campaigns
    resources :discounts
    resources :services
    resources :products
    resources :clients
  end

  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
end