require 'rails_helper'

RSpec.describe TasksController, type: :controller do
	it 'saves a task' do
		post :create, {task: {description: 'tarefinha', points: 10}}
		expect(Task.all.size).to eq 1
	end

	it 'assigns a task to a worker' do
		worker = Worker.create(name: "ze trabalhador")
		post :create, {task: {description: 'tarefinha', points: 10, worker_ids: [worker.id]}}
		expect(worker.tasks.size).to eq 1
	end
end
