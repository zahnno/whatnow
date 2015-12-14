Rails.application.routes.draw do

root'select#new'

resources :selects, only: [:new, :create]
resources :events, only: [:show]

end
