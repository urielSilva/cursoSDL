class CreateWorkerTasks < ActiveRecord::Migration
  def change
    create_table :worker_tasks do |t|
      t.references :worker, index: true, foreign_key: true
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
