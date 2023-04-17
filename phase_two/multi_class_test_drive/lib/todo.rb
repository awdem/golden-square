class Todo
  def initialize(task) 
    @task = task
    @task_status = {incomplete: task}
  end

  def task
    @task
  end

  def mark_done!
    fail "task is already marked complete" if self.done?
    @task_status.transform_keys!(incomplete: :complete)
  end

  def done?
    @task_status.has_key?(:complete) ? true : false
  end

  
end

