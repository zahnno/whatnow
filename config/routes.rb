Rails.application.routes.draw do

root'selects#show'

get 'selects/location',
	to: 'selects#location_bar'

resources :selects, only: [:new, :create, :show, :index, :about]
resources :events, only: [:show, :index]

end

