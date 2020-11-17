Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #verb "/path", to: 'controller#action'

  #show all pets
  get '/pets', to: 'pets#index'

  get '/pets/new', to: 'pets#new'

  get '/pets/:id', to: 'pets#show', as: :pet

  post '/pets', to: 'pets#create'

  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'

  delete 'pets/:id', to: 'pets#destroy', as: :delete_pet
end


# routes -> controller -> view
