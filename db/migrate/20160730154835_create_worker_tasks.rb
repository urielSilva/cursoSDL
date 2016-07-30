class CreateWorkerTasks < ActiveRecord::Migration
  def change
    create_table :worker_tasks do |t|
    	t.references :worker, :null => false
  		t.references :task, :null => false
    end
  	add_index(:worker_tasks, [:worker_id, :task_id], :unique => true)
  end

end


