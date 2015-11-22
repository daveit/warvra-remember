Rails.application.routes.draw do
  
  resources :acc_trans
  resources :acc_logs
  resources :acc_settings
  resources :acc_types
  resources :app_settings
  resources :acc_accounts
  resources :acc_bank_accounts
  resources :regions
  resources :ivillages do
    collection { post :import }
  end
  resources :ireceipts
  resources :individuals do
    resources :ireceipts
    collection { post :import }
  end
  resources :icats
  resources :vreceipts
  resources :pay_types
  resources :notices
  resources :titles
  resources :positions
  resources :villages do
    collection do
      get :financial
      get :notfinancial
      get :prospect
      get :cancelled
    end
    resources :contacts
    resources :vreceipts
    collection { post :import }
  end
  resources :village_categories
  resources :statuses
  resources :suburbs do
  	collection { post :import }
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
