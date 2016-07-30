class TasksController < ApplicationController

	def index
		@task = Task.new
	end

	def create
		Task.create params.require(:task).permit(:description, :points)
		@task = Task.new
		render 'tasks/index'
	end
end
