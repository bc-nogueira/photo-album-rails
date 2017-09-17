Rails.application.routes.draw do
  root to: 'photos#index'

  resources :pages, path: '', only: [] do
    collection do
      get :about
    end
  end

  resources :photos, only: [:index, :new]
end
