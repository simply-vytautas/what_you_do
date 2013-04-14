WhatYouDo::Application.routes.draw do
  root to: "user#main"
  match ":controller(/:action(/:id))(.:format)"
end
