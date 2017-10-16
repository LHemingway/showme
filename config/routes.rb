Rails.application.routes.draw do

# Below is what the devise gem generates, next to it is the validation for all the controller methods
# The projects are nested within the users resources, this was done by nested scaffold
# Nested scaffold only worked due to bundling the nested scaffold gem
	devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users do
    resources :projects
  end
  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# The root for the website is set below
root "projects#index"
end


