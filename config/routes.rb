Rails.application.routes.draw do
  resources :usuarios
  resources :contas_a_recebers
  resources :contas_a_pagars
  resources :tipo_de_conta
  resources :fornecedors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
