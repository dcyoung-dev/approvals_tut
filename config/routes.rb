Rails.application.routes.draw do
  resources :change_requests
  resources :approvals
  resources :comments
  resources :pull_requests
  resource :home, only: :show

  root "homes#show"
end
