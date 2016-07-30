class WorkersController < ApplicationController

	def index
		@workers = Worker.includes(:tasks).all
	end

	def show
		@worker = Worker.includes(:tasks).find(params[:id])	
		@total = 0
		@worker.worker_tasks.each { |w| @total += w.task.points if w.done}
	end

	def finish_task
		task = WorkerTask.where(worker_id: params[:id], task_id: params[:task_id]).first
		if task.finish
			render nothing: true, status: :ok
		end
		
	end
end
