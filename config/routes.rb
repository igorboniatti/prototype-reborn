Rails.application.routes.draw do
  resources :comentarios
  resources :publicacaos
  resources :arquivos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
end
