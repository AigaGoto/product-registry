Rails.application.routes.draw do
  root 'peoducts#index'
  resources :peoducts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
