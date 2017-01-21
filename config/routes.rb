Rails.application.routes.draw do
  resources :website_links
  get 'agent_websites/import'
  get 'profile/show'
  get 'agent_websites/crawler'
  get 'agent_websites/settings'
  get 'agent_websites/trendings'



  root to: 'welcom#index'

  resources :dummies
  devise_for :agents
  resources :agent_websites
end
