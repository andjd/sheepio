Rails.application.routes.draw do
  get '/bleets', to: 'bleets#index'
end