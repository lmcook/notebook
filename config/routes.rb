Notes::Application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :notes

  as :user do
	  get "/login" => "devise/sessions#new"
	end

	devise_scope :user do
	  delete "/logout" => "devise/sessions#destroy"
	end
  
end
