Rails.application.routes.draw do

  root 'chores#index'
  resources :orders, except: :destroy
  resources :customers, except: :destroy
  resources :workers, except: :destroy
  resources :chores, except: :destroy
  delete 'orders/:id' => 'orders#destroy', as: :delete_order
  delete 'customers/:id' => 'customers#destroy', as: :delete_customer
  delete 'workers/:id' => 'workers#destroy', as: :delete_worker
  delete 'chores/:id' => 'chores#destroy', as: :delete_chore


  resources :sessions, only: [:new, :create]

end
