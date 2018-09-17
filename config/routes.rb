Rails.application.routes.draw do
  root 'kpts#index'
  resources :kpts
end
