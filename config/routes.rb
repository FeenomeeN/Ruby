Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/facebook'
    get 'omniauth_callbacks/vkontakte'
  end
  devise_for :users
  resources :users
  root 'posts#index', as:'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
end
