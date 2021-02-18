Rails.application.routes.draw do
  resources :tweets do
    resource :like
    resource :retweet
  end

  resource :welcome, controller: 'welcome' do
    get :history
  end
  
  root to: "welcome#index"
end
