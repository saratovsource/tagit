scope module: :web do
  scope "(:locale)", locale: /ru|en/ do
    root to: 'welcome#index'
    #resource :templates, only: [:show]
    get 'templates/*template', to: 'templates#show'
    resource :session, only: [:new, :destroy]
    get '/auth/:provider/callback', to: 'sessions#create'
  end
end
