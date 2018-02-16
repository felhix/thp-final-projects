Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }

  resources :projects, only: [:create, :destroy]
  get '/new/project', to: 'projects#new', as: 'new_project'
  get '/project/:id', to: 'projects#show', as: 'show_project'
  get '/project/:id/edit', to: 'projects#edit', as: 'edit_project'
  patch '/projects/:id', to: 'projects#update', as: 'update_project'

end
