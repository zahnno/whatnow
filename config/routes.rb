Rails.application.routes.draw do

root'selects#new'

get 'selects/location',
	to: 'selects#location_bar'

resources :selects, only: [:new, :create, :show, :index]
resources :events, only: [:show, :index]

end

