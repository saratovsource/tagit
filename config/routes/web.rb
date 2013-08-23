scope module: :web do
  scope "(:locale)", locale: /ru|en/ do
    root to: 'welcome#index'
    get '/about', to: 'welcome#index'
    resource :session, only: [:new, :destroy]
    get '/auth/:provider/callback', to: 'sessions#create'
  end
end
