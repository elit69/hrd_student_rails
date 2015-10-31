Rails.application.routes.draw do
  root to: "student#index"
  resources :student
end
