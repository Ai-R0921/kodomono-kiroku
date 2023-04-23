Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to:  'homes#top'
  get 'about' => 'homes#about'
  get 'users/my_page', to: 'users#my_page', as:'my_page'
  get 'users/unsubscribe'
  patch 'users/withdraw'
  resources :users, only: [:edit, :update]
  resources :posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
