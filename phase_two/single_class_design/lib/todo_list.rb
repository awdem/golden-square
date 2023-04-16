class TodoList 
  def initialize
    @todo_list = [] # todo_list is an array of strings
  end

  def add_todo(todo) # todo is a string
    fail 'No text in todo!' if todo.empty?
    @todo_list << "- " + todo
  end

  def see_list
   return "list is empty!" if @todo_list.empty?
   @todo_list.join("\n")
  end

  def complete(todo)
    fail 'No text in todo!' if todo.empty?
    return "Not on the list!" unless @todo_list.include?("- " + todo) 
    @todo_list.reject! {|listed_todo| listed_todo == "- " + todo }
  end
end
