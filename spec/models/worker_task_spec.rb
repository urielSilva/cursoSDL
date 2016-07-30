require 'rails_helper'

RSpec.describe WorkerTask, type: :model do
  
  it 'creates a task with not done status' do
  	worker_task = WorkerTask.create(worker: Worker.all.first, task: Task.all.first)
  	expect(worker_task.done).to be nil
  end

  it 'finishes a task' do
  	worker_task = WorkerTask.create(worker: Worker.all.first, task: Task.all.first)

  end 
end
