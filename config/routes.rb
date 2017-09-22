Rails.application.routes.draw do

  resources :articles
  root controller: :landing, action: :index

end
