class Diary
  def initialize
    @entries = []
  end

  def see_entry_list
    @entries
  end

  def add(entry) 
    @entries << entry
    # fails is entry is already on list
  end

  def read(entry) # entry is an instance of Entry
    fail "Invalid Entry" if !@entries.include?(entry)
    entry.get_contents
    # fails if entry is not on list
  end

  def find_best_entry(wpm, minutes) # wpm is an integer representing reading rate, minutes is an integer representing available time
  # returns longest entry that can be read in the available time
  # fails if no entry can be read in the available time
  end
end