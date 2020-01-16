Rails.application.routes.draw do

  get 'equipments/search'
  get 'users/show'
  get 'user/show'

  # lire toutes les offres
  get "equipments" => "equipments#index"

  # lire une offre
  get "equipments/:id" => "equipments#show"

  # creer une offre
  get "equipments/new" => "equipments#new"
  post "equipments/" => "equipments#create"

  # updater une offre
  get "equipments/id/edit" => "equipments#edit"
  patch "restaurants/:id " => "equipments#update"

  # supprimer une offre
  delete "equipments:/id" => "equipments#destroy"

  # devise_for :users
  root to: "equipments#search"

  devise_for :users
   root to: "home#index"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
