WhatYouDo::Application.routes.draw do
  root to: "user#main"
  resources :user, only: [ :show ]

  match "user/search", to: "user#search"
end
