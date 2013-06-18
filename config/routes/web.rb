scope module: :web do
  scope "(:locale)", locale: /ru|en/ do
    root to: 'welcome#index'
    resource :session, only: [:new, :create, :destroy]
  end
end
