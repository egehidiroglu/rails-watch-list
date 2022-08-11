Rails.application.routes.draw do
  resources :lists, only: %i[create index show new]
end
