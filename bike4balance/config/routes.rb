Rails.application.routes.draw do
  get 'booking/new'
  get 'booking/create'
  get 'booking/index'
  get 'booking/show'
  get 'booking/destroy'
  post 'booking/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
