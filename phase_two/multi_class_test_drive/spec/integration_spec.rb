require 'diary'
require 'diary_entry'

RSpec.describe "Diary integration" do
  it "lists diary entries" do
    diary = Diary.new
    entry1 = DiaryEntry.new("my title 1", "my contents 1")
    entry2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.all).to eq [entry1, entry2]
  end

  it "counts all the words" do
    diary = Diary.new
    entry1 = DiaryEntry.new("my title 1", ("one " * 100))
    entry2 = DiaryEntry.new("my title 2", ("one " * 100))
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.count_words).to eq 200
  end

  it "estimates the reading time at a given wpm" do
    diary = Diary.new
    entry1 = DiaryEntry.new("my title 1", ("one " * 100))
    entry2 = DiaryEntry.new("my title 2", ("one " * 100))
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.reading_time(100)).to eq 2
  end

  describe "best entry finding behavior" do
    context "given one entry that is readable within the time limit" do
      it 'returns that entry' do
        diary = Diary.new
        entry1 = DiaryEntry.new("my title 1", ("one " * 100))
        diary.add(entry1)
        results = diary.find_best_entry_for_reading_time(100, 1)
        expect(results).to eq entry1
      end
    end

    context "given one entry that is unreadable in the time" do
      it "returns nil" do
      diary = Diary.new
      entry1 = DiaryEntry.new("my title 1", ("one " * 100))
      diary.add(entry1)
      results = diary.find_best_entry_for_reading_time(50, 1)
      expect(results).to eq nil    
      end  
    end
    
    context "multiple entries" do
      it 'returns the entry closest to the time' do
        diary = Diary.new
        entry1 = DiaryEntry.new("my title", ("one " * 6))
        best_entry = DiaryEntry.new("my title", ("one " * 9))
        entry2 = DiaryEntry.new("my title", ("one " * 4))
        entry3 = DiaryEntry.new("my title", ("one " * 2))
        diary.add(entry1)
        diary.add(best_entry)
        diary.add(entry2)
        diary.add(entry3)
        results = diary.find_best_entry_for_reading_time(10, 1)
        expect(results).to eq best_entry
      end
    end
  end



end