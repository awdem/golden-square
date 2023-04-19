class ContactList
  def initialize 
    @list = []
    @new_numbers
  end

  def scan_diary_for_contacts(diary) # diary is an instance of the Diary class
    self.find_new_contacts(diary)
    fail 'No new contacts found.' if @new_numbers.empty?
    @list += @new_numbers.uniq
  end

  def list
    @list
  end

  private 

  def find_new_contacts(diary)
    @new_numbers = []
    diary.see_entry_list.each do |entry| 
      entry.get_contents.scan(/[0-9]{11}/) do|number| 
        @list.include?(number) ? next : @new_numbers << number
      end
    end  
  end
end