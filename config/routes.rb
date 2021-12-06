Rails.application.routes.draw do
  get 'bookmakers/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'
  post 'bookmakers' => 'bookmakers#create'
  get 'bookmakers' => 'bookmakers#index'
  get 'bookmakers/:id' => 'bookmakers#show', as: 'bookmaker'
  get 'bookmakers/:id/edit' => 'bookmakers#edit', as: 'edit_bookmaker'
  patch 'bookmakers/:id' => 'bookmakers#update', as: 'update_bookmaker'
  delete 'bookmakers/:id' => 'bookmakerss#destroy', as: 'destroy_bookmaker'
end
