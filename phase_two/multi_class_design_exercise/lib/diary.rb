class Diary
  def initialize
    @entries = []
    @best_entries = []
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

  def find_best_entry(wpm, minutes)
    check__reading_time(wpm, minutes) 
    fail 'No valid entry' if @best_entries.empty?
    @best_entries.max_by(&:word_count).get_contents
  end

  private
  
  def check__reading_time(wpm, minutes)
    @best_entries = []
    @entries.each do |entry|
      next unless entry.reading_time(wpm) <= minutes
        @best_entries << entry
    end  
  end

end