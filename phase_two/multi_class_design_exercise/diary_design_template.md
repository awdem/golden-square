# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

key nouns and verbs:

diary, entry, reading speed, time, tasks, todo list, contacts, phone numbers

keep a regular diary, read my past diary entries, select diary entries to read based on time and reading speed, keep a todo list, list of all of the mobile phone numbers


design: https://wireframe.cc/925t8L

```ruby
class Diary
  def initialize
    # ...
  end

  def see_entry_list
    # returns list of entries
  end

  def add_entry(entry) # entry is an instance of Entry
    # adds entry to list of entries
    # returns nothing
    # fails is entry is already on list
  end

  def read_entry(entry) # entry is an instance of Entry
    # returns contents of entry on list
    # fails if entry is not on list
  end

  def find_best_entry(wpm, minutes) # wpm is an integer representing reading rate, minutes is an integer representing available time
  # returns longest entry that can be read in the available time
  # fails if no entry can be read in the available time
  end
end

class Entry
  def initialize(title, contents) # title is a string, contents is a string.
    @title = title
    @contents = contents
  end

  def get_title
    # returns title
  end

  def get_contents
    # returns contents
  end

  def reading_time(wpm) # wpm is an integer representing reading rate
    # returns estimated reading time as an integer
  end

  def word_count
    # returns number of words in contents as an integer
  end
end

class ContactList
  def initialize 
    # ...
  end

  def scan_diary_for_contacts(diary) # diary is an instance of the Diary class
    # scan diary entries for phone numbers and add thems to a list
    # returns nothing
    # fails if no entries/no contacts found
  end

  def list
    # returns the list of current contacts
  end
end

class Todo
  def initialize(task) # task is a string representing an incomplete task
    # code
  end

  def get_task
    # returns task
  end

  def mark_complete
    # marks an incomplete task as complete
    # fails if task is already complete
  end


  def done?
    # check if a task is complete
    # returns true if it is complete, else false
  end
end

class TodoList
  def initialize
    # ..
  end

  def see_incomplete
    # returns list of incomplete tasks
    # fails if no incomplete tasks
  end

  def see_complete
    # returns list of complete tasks
    # fails is no complete tasks
  end

  def see_all
    # shows list of all tasks and their status
  end


end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby



```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby


```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
