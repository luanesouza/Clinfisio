Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors do
    resources :appointments
  end

  resources :patients do
    resources :appointments
  end

  resources :sessions

  resources :expenses
end
