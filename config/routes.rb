# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   # get '/lists', to: 'lists#index'
#   # get '/lists/new', to: 'lists#new'
#   # post '/lists', to: 'lists#create'
#   # get '/lists/:id', to: 'lists#show', as: 'list'
#   # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
#   # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
#   # delete '/bookmarks/:id', to: 'bookmarks#destroy'
#   resources :lists, only: [:index, :new, :create, :show] do
#     resources :bookmarks, only: [:new, :create, :destroy]
#   end
# end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
