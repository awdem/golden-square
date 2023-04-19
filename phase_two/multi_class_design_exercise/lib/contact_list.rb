class ContactList
  def initialize 
    @list = []
  end

  def scan_diary_for_contacts(diary) # diary is an instance of the Diary class
    diary.see_entry_list.each do |entry| 
      entry.get_contents.scan(/[0-9]{11}/) do|number| 
        @list.include?(number) ? next : @list << number
      end
    end
    # fails if no entries/no contacts found
  end

  def list
    @list
  end
end