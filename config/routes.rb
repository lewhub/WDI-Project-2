Rails.application.routes.draw do

  root 'customers#index'
  resources :orders, except: :destroy
  resources :customers, except: :destroy
  resources :workers, except: :destroy
  resources :chores, except: :destroy
  delete 'orders/:id' => 'orders#destroy', as: :delete_order
  delete 'customers/:id' => 'customers#destroy', as: :delete_customer
  delete 'workers/:id' => 'workers#destroy', as: :delete_worker
  delete 'chores/:id' => 'chores#destroy', as: :delete_chore

  
  get '/sessions/new_worker_session' => 'sessions#new_worker_session', as: :new_worker_session
  get 'logout' => 'sessions#destroy', as: :logout
  get 'logout/worker' => 'sessions#destroy_worker', as: :logout_worker
  post 'sessions/worker' => 'sessions#create_worker_session', as: :sessions_worker
  resources :sessions, only: [:new, :create, :new_worker_session]

end
