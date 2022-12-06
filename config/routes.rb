Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/show'
  resources :topics do
    resources :comments, only: [:create, :show, :destroy]
  end
  devise_for :users

  root 'topics#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 