DoOrDontButDo::Application.routes.draw do
  root to: 'dodonts#show'

  resources :dodonts, only: [:update, :show]

end
