require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  get 'news', to: 'news#index'

  get '/news_settings',to:'news_settings#index'

  get '/notifications', to: 'notifications#index'
  get '/notifications/:id', to: 'notifications#show'

  resources :users

  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'new_session'
  post '/signin', to: 'sessions#create', as: 'signin'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_USERNAME"])) &
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_PASSWORD"]))
  end if Rails.env.production?

  mount Sidekiq::Web => '/sidekiq'
end
