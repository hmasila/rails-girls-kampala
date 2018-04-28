Rails.application.routes.draw do
  get 'pages/info'
  root to: redirect('/ideas')
  
  resources :ideas do
    collection do
      get :duplicate
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
