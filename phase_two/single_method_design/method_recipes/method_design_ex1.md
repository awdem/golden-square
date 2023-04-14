# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# 'time_to_read' returns a time to read a given text assuming a read-ing rate
reading_time = time_to_read(text)

* reading_time: a string containing the estimated reading time (eg "0.5 minutes")
* text: a string containing words

# The method doesn't have any other side effects

```




## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# 1
time_to_read("this book") => "0.01 minutes"
# 2
time_to_read("") => "0 minutes"
# 3
time_to_read("hello hi hello hi hello hi hello hi hi hello hello hi hello hi hello hi hello hi hi hello") => "0.1 minutes"



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

