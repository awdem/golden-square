# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them. 


As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class TodoList
  def initialize
    @todo_list = [] # todo_list is an array of strings
  end


  def add_todo(todo) #todo is a string
    #returns nothing
  end

  def see_list
    #returns @todo_list as a string in list format
    #if @todo_list is empty, returns a string telling user list is empty
  end

  def complete(todo) #todo is a string contained in @todo_list
  #returns nothing
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._
```ruby
# 1 
todo_list = TodoList.new
todo_list.see_list # => "list is empty!"

# 2 - single todo
todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.see_list # => "- Walk the dog" 

# 3 - multiple todos

todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.add_todo('Go to the shop')
todo_list.see_list # => "- Walk the dog\n- Go to the shop"

#  4 - todo is an empty string
todo_list = TodoList.new
todo_list.add_todo('')  # => "fails with "No text in todo!"

# 5 - add then remove a todo from list with complete

todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.complete('Walk the dog')
todo_list.see_list # => "list is empty!"

# 6 - removes a todo from a multiline list while maintaining format

todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.add_todo('Make lunch')
todo_list.add_todo('Go to the shop')
todo_list.complete('Make lunch')
todo_list.see_list # => "- Walk the dog\n- Go to the shop"

# 7 - complete fails with empty string

todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.complete('')
todo_list.see_list # => "fails with 'No text in todo!'"

# 8 - returns 'not on the list' if todo is not on the list.

todo_list = TodoList.new
todo_list.add_todo('Walk the dog')
todo_list.complete('Make lunch') # => returns "not on the list!

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._