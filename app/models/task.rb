class Task < ActiveRecord::Base
	has_many :worker_tasks
	has_many :workers, through: :worker_tasks
end
