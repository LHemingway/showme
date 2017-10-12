Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users do
    resources :projects
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "projects#index"
end


