Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pages, path: '', only: [] do
    collection do
      get :home
    end
  end
end
