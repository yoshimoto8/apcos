Rails.application.routes.draw do
  devise_for :users
  root 'top_pages#index'
end
