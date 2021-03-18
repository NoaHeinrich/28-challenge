Rails.application.routes.draw do
  # get 'patients/new', to: 'patients#new'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post 'patients/create', to: 'patients#create'
  resources :patients, only: [:new, :create, :show]
  root to: 'patients#new'
end
