Rails.application.routes.draw do
  root "articles#index"
  # se sustituye get por resources para que mapea todas las rutas y asi evitar que el codigo dependa de una configuracion de ruta especifica.
  resources :articles do
    resources :comments
  end
end