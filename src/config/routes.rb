Rails.application.routes.draw do
  get 'welcome/buttons'

  root 'welcome#buttons'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
