Rails.application.routes.draw do
  root to: 'tasks#index'

  # New
  get 'tasks/new', to: 'tasks#new'
  # Create
  post '/tasks', to: 'tasks#create'

  # Index
  get '/tasks', to: 'tasks#index'

  # Show
  get '/tasks/:id', to: "tasks#show", as: 'task'

  # Edit
  get 'tasks/:id/edit', to: "tasks#edit", as: 'task_edit'
  # Update
  patch 'tasks/:id', to: "tasks#update"

  # Destroy
  delete '/tasks/:id', to: "tasks#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
