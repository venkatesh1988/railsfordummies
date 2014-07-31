Formag::Application.routes.draw do

  
  resources :names

  match '/phonebooks/index' => 'phonebooks#index', :via => 'get'
  match '/phonebooks/create' => 'phonebooks#create', :via => 'post'
  
  match '/phonebooks/update' => 'phonebooks#update', :via=>'post'
  match '/phonebooks/delete' => 'phonebooks#delete', :via => 'get'
  match '/phonebooks/show' => 'phonebooks#show', :via => 'get'
  
  match '/phonebooks/edit' => 'phonebooks#edit',:via => 'get'
  
  resources :phonebooks
end
