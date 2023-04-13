# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
contains_todo = check_for_todos?(text)

# text is a string containing words
# contains_todo is a boolean which is true if text contains #TODO and false if not
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
# check_for_todos?("") => false
# 2
# check_for_todos?("word") => false
# 3
# check_for_todos?("#TODO") => true
# 4 
# check_for_todos?("todo") => false


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

