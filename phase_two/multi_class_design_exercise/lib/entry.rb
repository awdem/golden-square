class Entry
  def initialize(title, contents) # title is a string, contents is a string.
    @title = title
    @contents = contents
  end

  def get_title
    @title
  end

  def get_contents
    @contents
  end

  def reading_time(wpm) # wpm is an integer representing reading rate
    # returns estimated reading time as an integer
  end

  def word_count
    # returns number of words in contents as an integer
  end
end