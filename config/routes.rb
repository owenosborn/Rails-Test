Rails.application.routes.draw do
  resources :soundsets
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	
  get '/files', to: 'filehelper#index'
  get '/manual', to: 'manual#index'

 #the constraint allows anything in url except slash (normally '.' is not allowed
 get 'files/:id',
  to: 'filehelper#get_file',
  as: 'id',
  format: false,
  defaults: { format: 'html' },
  constraints: { id: %r{[^\/]+} }
  
  root 'welcome#index'

end
