Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/about', to: 'welcome#about', as: 'about'
  get 'welcome/jobs', to: 'welcome#jobs', as: 'jobs'
  get 'welcome/customers', to: 'welcome#customers', as: 'customers'
  get 'welcome/bim', to: 'welcome#bim', as: 'bim'
  get 'welcome/index2', to: 'welcome#index2', as: 'index2'
  get 'welcome/index3', to: 'welcome#index3', as: 'index3'
  
end
