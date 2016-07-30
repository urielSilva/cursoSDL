class WorkerTask < ActiveRecord::Base
  belongs_to :worker
  belongs_to :task


  def finish
  	self.update(done: true)
  end

  def set_done
  	self.done = false
  end
end
