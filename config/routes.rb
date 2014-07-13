Formag::Application.routes.draw do

  resources :phonebooks

  match '/phonebooks/index' => 'phonebooks#index', :via => 'get'
  match '/phonebooks/add_user' => 'phonebooks#add_user', :via => 'post'
  match '/phonebooks/update' => 'phonebooks#update', :via=>'post'
  
  match '/phonebooks/show' => 'phonebooks#show', :via => 'get'
  match '/phonebooks/index' => 'phonebooks#index', :via => 'get'
  match '/phonebooks/edit' => 'phonebooks#edit',:via => 'get'
  

end
