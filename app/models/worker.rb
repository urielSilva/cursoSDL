class Worker < ActiveRecord::Base
	has_and_belongs_to_many :tasks, :join_table => :worker_tasks
end
