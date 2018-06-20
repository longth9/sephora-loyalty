Loyalty::Engine.routes.draw do
  resources :user_loyalties
  root to: 'user_loyalties#index'
end
