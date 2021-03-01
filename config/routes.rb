Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [] do
    collection do
      post 'new'
    end
    member do
      get 'bets'
    end
  end

  resources :sports, only: [] do
    collection do
      post 'new'
    end
  end

  resources :bets, only: [] do
    collection do
      post 'new'
    end
  end
end
