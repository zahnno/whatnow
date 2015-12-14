Rails.application.routes.draw do

root'selects#new'

resources :selects, only: [:new, :create]
resources :events, only: [:show]

end
