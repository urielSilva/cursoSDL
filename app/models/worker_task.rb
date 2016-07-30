class WorkerTask < ActiveRecord::Base
  belongs_to :worker
  belongs_to :task

  #before_create :must_be_done

  def finish
  	self.update(done: true)
  end

  def must_be_done
  	self.done = false
  end
end
