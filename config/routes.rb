Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :welcome, controller: 'welcome' do
    get :history
  end
  
  root to: "welcome#index"
end
