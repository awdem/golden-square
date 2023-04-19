class TodoList
  def initialize
    @task_list = []
  end

  def add(todo)
    fail "Task is already on the list." if @task_list.include?(todo) 
    @task_list << todo
  end

  def see_incomplete
    @task_list.reject(&:done?)
  end

  def see_complete
    @task_list.filter(&:done?)
  end

  def see_all
    @task_list.map(&:task_with_status)
  end
end