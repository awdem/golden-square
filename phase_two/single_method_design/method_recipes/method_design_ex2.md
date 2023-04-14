# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
is_correct = check_grammar(text)

# * text is a string with words in it
# * is_correct is a boolean depending on whether text checks out or not.

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
check_grammar("") => false
# 2
check_grammar("one") => false
# 3
check_grammar("one two.") => false 
# 4 
check_grammar("One") => false
# 5 
check_grammar("One.") => true
# 6
check_grammar("Two.") => true
# 7
check_grammar("One?") => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

