# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

# `extract_upper` extracts uppercase words from a string
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects

# 'time_to_read' returns a time to read a given text assuming a read-ing rate
reading_time = time_to_read(text)

reading_time: a string(eg "0.5 minutes")
text: a string(eg "this is a book")

```




## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error


time_to_read("this book") => "0.01 minutes"
time_to_read("") => "0 minutes"
time_to_read("hello hi hello hi hello hi hello hi hi hello hello hi hello hi hello hi hello hi hi hello") => "0.1 minutes"



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

