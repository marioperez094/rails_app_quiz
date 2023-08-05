Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'static_pages#index'

  get '/jobs', to: 'jobs#index'

  get '/jobs/:id', to: 'jobs#find'

  post '/jobs', to: 'jobs#create'

end
