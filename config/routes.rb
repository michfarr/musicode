Rails.application.routes.draw do

  devise_for :users
  resources :artists do
    resources :songs, shallow: true
  end

  root 'artists#home'
end
