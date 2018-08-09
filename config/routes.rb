
Rails.application.routes.draw do
  root 'welcome#index2'

  get 'welcome/about', to: 'welcome#about', as: 'about'
  get 'welcome/jobs', to: 'welcome#jobs', as: 'jobs'
  get 'welcome/customers', to: 'welcome#customers', as: 'customers'
  get 'welcome/bim', to: 'welcome#bim', as: 'bim'
  get 'welcome/index2', to: 'welcome#index2', as: 'index2'
  get 'welcome/facility', to: 'welcome#facility', as: 'facility'
  get 'welcome/contacts', to: 'welcome#contacts', as: 'contacts'
  get 'welcome/terms-of-use', to: 'welcome#terms-of-use', as: 'terms-of-use'


end
