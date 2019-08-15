Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:show, :new, :edit, :update, :destroy]
  end
  resources :doses, only: [:show, :destroy]
end
