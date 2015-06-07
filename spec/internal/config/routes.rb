Rails.application.routes.draw do
  resources :homepages, only: :index
end
