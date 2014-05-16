Railsapp::Application.routes.draw do
  resources :home

  root 'home#getter'

end
