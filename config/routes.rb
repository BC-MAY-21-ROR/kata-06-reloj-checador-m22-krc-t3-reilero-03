Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'registrations_new', to: 'registrations#new'
  post 'registrations_new', to: 'registrations#create'

  post 'attendances_create', to: 'attendances#create'
  post 'new_attendance_path', to: 'attendances#new'


  get 'sessions_new', to: 'sessions#new'
  post 'sessions_new', to: 'sessions#create', as: 'log_in'

  delete 'logout', to: 'sessions#destroy'

  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # root "log#index"
  # get 'sign_up', to: 'log#new'
  # post 'sign_up', to: 'log#create'
  
  resources :branches
  resources :employees
  resources :attendances
  
end
