Rails.application.routes.draw do
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	
  get '/files', to: 'filehelper#index'
  get '/file/:id', to: 'filehelper#get_file'
 root 'welcome#index'

end
