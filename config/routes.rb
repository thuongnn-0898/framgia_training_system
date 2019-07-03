Rails.application.routes.draw do
  root "session#new"
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "sessions#destroy"
  get "profile", to: "user#show"
  scope :supervisor do
    resources :user, except: :show
  end
end
