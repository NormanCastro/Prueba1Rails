class TodosController < ApplicationController

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.save


		redirect_to root_path
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update(todo_params)
			redirect_to root_path, notice: 'Se ha actualizado con exito'
		else
			redirect_to edit_post_path(@todo.id), notice: 'No se ha podido actualizar'	
		end
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.delete

		redirect_to root_path
	end

	def complete

	end

	def list
		@todos = Todo.all
		
	end


	private

	def todo_params
	params.require(:todo).permit(:description, :completed)
	end


end
