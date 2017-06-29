Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

    get 'news', to: 'news#index'



  get '/news_settings',to:'news_settings#index'


  get '/notifications', to: 'notifications#index'
  get '/notifications/:id', to: 'notifications#show'

end
