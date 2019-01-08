Rails.application.routes.draw do
  #resources :amazon_orders
  get 'admin/index'
  get 'sessions/new' => 'admin#index'
  get 'sessions/create' => 'admin#index'
  get 'sessions/destroy'
  get 'users/login_path' => 'sessions#new'
  get 'login_path' => 'sessions#new'
  get 'register_url' => 'users#new'
  get 'logout' => 'users#destroy'
  resources :users

  get 'admin' => 'admin#index'
  get 'cash_return' => 'admin#cash_return'
  get 'amazon_orders' => 'admin#amazon_orders'
  get 'daily_rates' => 'admin#daily_rates'
  get 'spiaggia' => 'admin#spiaggia_report'
  get 'properties' => 'admin#properties'
  get 'add_amazon_order' => 'admin#add_amazon_order'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'login' => :destroy
  end

  root 'admin#index'
end
