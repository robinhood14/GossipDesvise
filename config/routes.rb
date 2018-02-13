Rails.application.routes.draw do

  devise_for :users

post 'gossips/new', to: 'gossips#create'

  root "gossips#index"
  resources "gossips"
end

