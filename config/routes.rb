Rails.application.routes.draw do
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	
  get '/files', to: 'filehelper#index'

 #the constraint allows anything in url except slash (normally '.' is not allowed
 get 'files/:id',
  to: 'filehelper#get_file',
  as: 'id',
  format: false,
  defaults: { format: 'html' },
  constraints: { id: %r{[^\/]+} }
  
  root 'welcome#index'

end
