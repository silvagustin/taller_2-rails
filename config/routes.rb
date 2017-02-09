Rails.application.routes.draw do
  resources :beacons
  resources :functions
  resources :semaforos
  resources :mac_addresses
end
