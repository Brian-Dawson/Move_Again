Rails.application.routes.draw do
  get 'home_screen/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do

  end
  root 'home_screen#index'
end
