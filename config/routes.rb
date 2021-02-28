Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root "teams#index"
  resources :teams do
    resources :histories
    resources :investments
  end
  post '/reset_db', to: 'reset_db#reset', as: "reset_db"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
