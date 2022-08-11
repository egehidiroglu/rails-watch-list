Rails.application.routes.draw do
  resources :lists, only: %i[create index show new] do
    resources :bookmarks, only: %i[create new]
  end
end
