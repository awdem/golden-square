require 'diary_entry'


RSpec.describe DiaryEntry do
  context "initially" do
    it "returns the title and contents" do
      entry = DiaryEntry.new("my title", "my contents")
      expect(entry.title).to eq "my title"
      expect(entry.contents).to eq "my contents"
    end 
  end

  describe "#count_words" do
    context "given an entry" do
      it "counts the words" do
        entry = DiaryEntry.new("my title", ("one " * 200))
        expect(entry.count_words).to eq 200
      end
    end

    context "given an empty entry" do
      it "returns 0" do
        entry = DiaryEntry.new("my title", "")
        expect(entry.count_words).to eq 0
      end
    end
  end      
  describe "#reading_time" do
    context "given an entry" do
        it "estimates the reading time" do
          entry = DiaryEntry.new("my title", ("one " * 200))
          expect(entry.reading_time(100)).to eq 2
        end
      end
  end
end