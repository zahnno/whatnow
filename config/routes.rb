Rails.application.routes.draw do

root'selects#new'

resources :selects, only: [:new, :create, :show]
resources :events, only: [:show]

get 'select/location',
	to: 'selects#location_bar'
end

