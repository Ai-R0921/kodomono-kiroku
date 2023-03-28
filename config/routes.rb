Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'about' => 'homes#about'
  get 'users/my_page'
  get 'users/unsubscribe'
  patch 'users/withdraw'
  resources :users, only: [:edit, :update]
  resources :posts

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
