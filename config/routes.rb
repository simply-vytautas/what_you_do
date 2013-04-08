WhatYouDo::Application.routes.draw do
  root to: "main#index"
  match ':controller/:action'
end
