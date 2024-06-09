Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/home', to: 'home#index'

  # catch-all route
  match '*path', to: redirect('/home'), via: :all
end