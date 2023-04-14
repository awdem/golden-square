class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    fail "No text in title!" if title.empty?
    fail "No text in contents!" if contents.empty?
    @title = title
    @contents = contents
    @chunk = []
  end

  # Returns the title as a string
  def title
    @title
  end

  # Returns the contents as a string
  def contents
    @contents
  end

  # Returns the number of words in the contents as an integer
  def count_words
    contents.split(" ").size
  end
# wpm is an integer representing the number of words the
# user can read per minute
# Returns an integer representing an estimate of the reading time in minutes
# for the contents at the given wpm.
  def reading_time(wpm) 
    fail "wpm must be above 0" if wpm  <= 0
    return (count_words / wpm.to_f).round
  end

# `wpm` is an integer representing the number
# of words the user can read per minute
# `minutes` is an integer representing the
# number of minutes the user has to read
# Returns a string with a chunk of the contents that the user could read
# in the given number of minutes.
# If called again, `reading_chunk` should return the next chunk, skipping
# what has already been read, until the contents is fully read.
# The next call after that it should restart from the beginning.

  def reading_chunk(wpm, minutes)
    readable_words = wpm * minutes 
    @chunk = [] if @chunk.size < readable_words
    if @chunk.empty?
      @chunk = words[0, readable_words]
      return @chunk.join(" ")
    else 
      words[@chunk.length, readable_words]
      @chunk = words[@chunk.length, readable_words]
      return @chunk.join(" ")
    end
  end


  private

  def words
    @contents.split(" ")
  end
  
end
