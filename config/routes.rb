Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :animals, only: [:index, :create]

      # resources :posts do
      #   resources :comments
      # end

    end
  end

  resources :posts do
    resources :comments
  end

  namespace :admin do
    resources :comments
  end
end

