# root "articles#index"
  Rails.application.routes.draw do
    root to: 'lists#index'
    resources :lists, except: :index do
      resources :bookmarks, only: [:new, :create, :destroy]
    end
  end
