Rails.application.routes.draw do
  root "session#new"
  
  get "profile", to: "user#show"
end
