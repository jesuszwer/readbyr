Rails.application.routes.draw do

  root to: "marketing#index"


  # Пути для пользователей
  resources :users, only: [:index, :show, :edit, :update, :destroy]

  # Пути для сессии
  get 'session/new', to: "session#new", as: "login"
  post 'session/create', to: "session#create"
  delete 'session/destroy', to: "session#destroy", as: "logout"

  # Пути для регистрации
  get 'registration/new', to: "registration#new", as: "register"
  post 'registration/create', to: "registration#create"

  # Пути для постов
  # resources :posts

  # Пути для комментариев

  # Ресурсы жанров книг (по названию)
  # resources :genres, only: [:show, :index], param: :name

  # Пути для книг
  resources :books, only: [:show, :index, :create, :new, :edit, :update, :destroy] do
    resources :comments, only: [:index, :show, :create, :destroy, :edit, :update]
    resource :like, only: [:create, :destroy], as: "likes"
    resource :dislike, only: [:create, :destroy], as: "dislikes"
  end

end
