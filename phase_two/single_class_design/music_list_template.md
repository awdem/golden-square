# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class MusicList do
  def initialize do
    #code here
  end

  def add(track) # track is a string representing a song title
    # returns nothing
    # fail if track is an empty string
  end

  def list
    # returns the current track list
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 - makes an empty list 

music_list = MusicList.new
music_list.list # => []

# 2 - adding a track 

music_list = MusicList.new
music_list.add("Dead Flowers")
music_list.list # => ["Dead Flowers"]

# 3 - fails if track is an empty string

music_list = MusicList.new
music_list.add("") # => fail with 'no text in track!'

# 4 - adding multiple tracks

music_list = MusicList.new
music_list.add("Dead Flowers")
music_list.add("Colorado Girl")
music_list.list # => ["Dead Flowers", "Colorado Girl"]






```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._