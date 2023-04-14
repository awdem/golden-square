class TodoList 
  def initialize
    @todo_list = [] # todo_list is an array of strings
  end

  def add_todo(todo) # todo is a string
    fail 'No text in todo!' if todo.empty?
    @todo_list << "- " + todo
  end

# returns @todo_list as a string in list format
# if @todo_list is empty, returns a string telling user list is empty

  def see_list
   return "list is empty!" if @todo_list.empty?
   @todo_list.join("\n")
  end

end