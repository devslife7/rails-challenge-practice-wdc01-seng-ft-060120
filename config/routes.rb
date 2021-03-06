Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :buildings, only: [:index, :show, :edit, :update]
  resources :companies, only: [:new, :create, :index, :show]
  resources :employees, only: [:new, :create]

end
