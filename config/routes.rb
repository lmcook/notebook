Notes::Application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :notes
  
end
