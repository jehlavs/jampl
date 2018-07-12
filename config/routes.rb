Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index2', to: 'welcome#index2', as: 'index2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
