class AddDoneToWorkerTask < ActiveRecord::Migration
  def change
  	add_column :worker_tasks, :done, :boolean
  end
end
