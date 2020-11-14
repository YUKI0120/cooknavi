Rails.application.routes.draw do
  devise_for :users
  get '/users/mypage' => 'users#mypage'
  root "recipes#index"
  resources :recipes do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :recipe_likes, only: :create
  resources :materials do
    collection do
      get 'search'
    end
  end
end
