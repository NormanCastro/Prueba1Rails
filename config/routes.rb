Rails.application.routes.draw do
	get 'todos', to: 'todos#index'
    get 'todos/list'	
	get 'todos/new'
	post 'todos', to: 'todos#create'
	get 'todos/:id', to: 'todos#show', as: 'todo'
	get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
	patch 'todos/:id', to: 'todos#update'
	delete 'todos/:id', to: 'todos#destroy', as: 'destroy_todo'
    get 'todos/:id/complete', to: 'todos#complete', as: 'complete_todo'


	root 'todos#index'

end
