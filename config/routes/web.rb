scope module: :web do
  scope "(:locale)", locale: /ru|en/ do
    root to: 'welcome#index'
    resource :session, only: [:new, :destroy]
    namespace :resources do
      resources :links
    end
    get '/auth/:provider/callback', to: 'sessions#create'
  end
end
