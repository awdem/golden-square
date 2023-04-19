require "diary"
require "entry"
require "todo_list"
require "todo"
require 'contact_list'

RSpec.describe "Diary integration" do
  describe "Diary Behaviour" do
    context "given some diary entries" do
      it "adds them to the diary" do
        diary = Diary.new
        entry1 = Entry.new("title1", "contents1")
        entry2 = Entry.new("title2", "contents2")
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.see_entry_list).to eq [entry1, entry2]        
      end

      it "can choose specific entries to read" do
        diary = Diary.new
        entry1 = Entry.new("title1", "contents1")
        entry2 = Entry.new("title2", "contents2")
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.read(entry1)).to eq "contents1"   
      end
      
      it "fails to read entries not added to diary" do
        diary = Diary.new
        entry1 = Entry.new("title1", "contents1")
        entry2 = Entry.new("title2", "contents2")
        diary.add(entry1)
        expect{ diary.read(entry2) }.to raise_error "Invalid Entry"
      end
    end
  end

  describe "Contact List Behaviour" do
    context "given some diary entries with contacts" do
      it "scans for phone numbers and adds them to a list" do
        diary = Diary.new
        entry1 = Entry.new("title1", "George is 09000000001")
        entry2 = Entry.new("title2", "Pete is 09000000007")
        contact_list = ContactList.new
        diary.add(entry1)
        diary.add(entry2)
        contact_list.scan_diary_for_contacts(diary)
        expect(contact_list.list).to eq ['09000000001', '09000000007']                
      end

      it "skips duplicates" do
        diary = Diary.new
        entry1 = Entry.new("title1", "George is 09000000001")
        entry2 = Entry.new("title2", "Pete is 09000000001")
        contact_list = ContactList.new
        diary.add(entry1)
        diary.add(entry2)
        contact_list.scan_diary_for_contacts(diary)
        expect(contact_list.list).to eq ['09000000001']
      end

      it "reads multiple numbers in one entry" do
        diary = Diary.new
        entry1 = Entry.new("title1", "George is 09000000001, Pete is 09000000007")
        contact_list = ContactList.new
        diary.add(entry1)
        contact_list.scan_diary_for_contacts(diary)
        expect(contact_list.list).to eq ['09000000001', '09000000007'] 
      end
    end

    context "when there no phone numbers in the diary" do
     xit "fails" do
        diary = Diary.new
        entry1 = Entry.new("title1", "contents1")
        contact_list = ContactList.new
        diary.add(entry1)
        expect{ contact_list.scan_diary_for_contacts(diary) }.to raise_error 'No new contacts found.'      
      end
    end
  end

  describe "Todo List behaviour" do
    it "adds todos to a todo list" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo2 = Todo.new("task2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      expect(todo_list.see_incomplete).to eq [todo1, todo2]      
    end

    it "returns completed todos as complete" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo2 = Todo.new("task2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo2.mark_complete!
      expect(todo_list.see_incomplete).to eq [todo1]
      expect(todo_list.see_complete).to eq [todo2]      
    end
 
    it "returns a mixed list of complete and incomplete todos" do
    todo_list = TodoList.new
    todo1 = Todo.new("task1")
    todo2 = Todo.new("task2")
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo2.mark_complete!
    todo_list.see_all => [{incomplete: todo1}, {complete: todo2}]
    end
  end
end