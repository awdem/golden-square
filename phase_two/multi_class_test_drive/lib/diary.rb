class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    @entries
  end

  def count_words
    @entries.sum(&:count_words)
  end

  def reading_time(wpm)
   (count_words / wpm.to_f).round
  end

# `wpm` is an integer representing the number of words the user can read
# per minute.
# `minutes` is an integer representing the number of minutes the user
# has to read.
# Returns an instance of diary entry representing the entry that is closest 
# to, but not over, the length that the user could read in the minutes they
# have available given their reading speed.

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries(wpm, minutes).max_by(&:count_words)
  end

  private

  def readable_entries(wpm, minutes)
    readable_words = wpm * minutes
    readable_entries =  @entries.filter do |entry|
    entry.count_words <= readable_words
    end
  end 
end