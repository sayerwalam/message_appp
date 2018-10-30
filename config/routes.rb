Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'messages#index'
  resources :messages, only: [:create, :destroy, :index, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
