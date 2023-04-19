class Todo
  def initialize(task) 
    @task = {incomplete: task}
  end

  def task
    @task.to_a[0][1]
  end

  def task_with_status
    @task
  end

  def mark_complete!
    fail "task is already marked complete" if self.done?
    @task.transform_keys!(incomplete: :complete)
  end

  def done?
    @task.has_key?(:complete) ? true : false
  end

end