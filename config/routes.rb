Rails.application.routes.draw do

  resources :artists do
    resources :songs
  end

  root 'artists#home'
end
