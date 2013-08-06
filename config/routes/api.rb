# Public API for application
namespace :api do
  namespace :v1 do
    namespace :user do
      resources :links, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
