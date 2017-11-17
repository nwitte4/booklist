Rails.application.routes.draw do
  resources :authors, except: [:edit, :update] do
    resources :books, only: [:show]
  end
  resources :books, only: [:show, :index, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
