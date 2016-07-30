class Task < ActiveRecord::Base
	has_and_belongs_to_many :workers, :join_table => :worker_tasks
end
