class Worker < ActiveRecord::Base
	has_many :worker_tasks
	has_many :tasks, through: :worker_tasks

end
