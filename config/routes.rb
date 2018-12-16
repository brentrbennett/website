Rails.application.routes.draw do
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
  get 'cash_return' => 'admin#cashreturn'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'login' => :destroy
  end

  root 'admin#index'
end
