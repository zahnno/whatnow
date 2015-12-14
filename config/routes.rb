Rails.application.routes.draw do

root'selects#new'

resources :selects, only: [:new, :create, :show]
resources :events, only: [:show]

end
