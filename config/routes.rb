Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end
  root controller: :landing, action: :index

end
