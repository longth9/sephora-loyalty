Rails.application.routes.draw do
  mount Loyalty::Engine, at: '/loyalty'
  root to: 'landing#index'
end
