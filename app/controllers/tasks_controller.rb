class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def create
		task = Task.new params.require(:task).permit(:description, :points, worker_ids: [])
		task.save
		redirect_to tasks_path
	end

	def new
		@task = Task.new
	end
end
