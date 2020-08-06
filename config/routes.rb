Rails.application.routes.draw do
  resources :partidas do
    resources :palabras, only: [:create]
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
