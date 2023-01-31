Rails.application.routes.draw do
  root "posts#index"



  devise_scope :user do
    resources :posts do
      member do
      post :edit
    end
      resources :comments
    end
    get "users", to: "devise/sessions#new"
  end
devise_for :users,controllers: { sessions: "users/sessions", registrations: "users/registrations"}
end
