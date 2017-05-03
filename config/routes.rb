Rails.application.routes.draw do
  resources :earthtools_queries, only: [:new, :create, :show]
  root "earthtools_queries#new"
end
