
Rails.application.routes.draw do
  root 'welcome#index2'

  get '/o-nas' => 'welcome#about'
  get '/reference' => 'welcome#customers'
  get '/bim' => 'welcome#bim'
  get '/prehled-cinnosti' => 'welcome#facility'
  get '/kontakt' => 'welcome#contacts'
  get '/zasady-pouziti' => 'welcome#terms-of-use'
  get '/kariera' => 'welcome#jobs'

  
end
