DoOrDontButDo::Application.routes.draw do
  root to: 'dodonts#index'

  resources :dodonts, only: [:update]

end
