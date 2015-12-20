Rails.application.routes.draw do

root'selects#new'

resources :selects, only: [:new, :create, :show, :index]
resources :events, only: [:show]

end
