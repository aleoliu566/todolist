class TodosController < ApplicationController
	
	def show
		@todo=Todo.where(:time =>"false")
	end
	def create
		@todo=Todo.new(thing_params)
		@todo.update_attribute(:time,"false")
		if @todo.save
			redirect_to root_path
		else render.new
		end
	end
	def new
		@todo=Todo.new
	end

	def edit
		@todo=Todo.find(params[:id])
	end
	def update
		@todo=Todo.find(params[:id])
		if @todo.update(things_params)
			redirect_to root_path
		else
			render :edit
		end
	end
	def destroy
		@todo=Todo.find(params[:id])
		@todo.destroy
		redirect_to root_path
	end

	def change
		@todo = Todo.find(params[:id])
		if @todo.time ==="false"
			@todo.update_attribute(:time,"true")
		else 
			@todo.update_attribute(:time,"false")
		end
		redirect_to root_path
	end


	private
	def  thing_params
		params.require(:todo).permit(:thing)
	end
end
