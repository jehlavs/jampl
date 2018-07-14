Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/about', to: 'welcome#about', as: 'about'
  get 'welcome/jobs', to: 'welcome#jobs', as: 'jobs'
  get 'welcome/customers', to: 'welcome#customers', as: 'customers'
  get 'welcome/bim', to: 'welcome#bim', as: 'bim'
  
end
