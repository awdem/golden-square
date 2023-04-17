class TodoList
  def initialize
    @task_list = []
  end

  def add(todo)
    fail "Task is already on the list." if @task_list.include?(todo) 
    @task_list << todo
  end

  def incomplete
    @task_list.filter {|task| !task.done? }
  end

  def complete
    @task_list.filter(&:done?)
  end

  def give_up!
    fail "All tasks are already completed." if self.incomplete.empty?
    self.incomplete.map!(&:mark_done!)
  end
end