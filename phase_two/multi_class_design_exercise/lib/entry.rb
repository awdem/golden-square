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
    return (word_count / wpm.to_f).ceil
  end

  def word_count
    @contents.split(" ").size
  end
end