Rails.application.routes.draw do
  root 'lists#index'

  resources :lists, only: %i[create index show new] do
    resources :bookmarks, only: %i[create new]
  end
  resources :bookmarks, only: [:destroy]
end

