require 'rails_helper'

RSpec.describe TasksController, type: :controller do
	it 'saves a task' do
		post :create, {task: {description: 'tarefinha', points: 10}}
		expect(Task.all.size).to eq 1
	end
end
