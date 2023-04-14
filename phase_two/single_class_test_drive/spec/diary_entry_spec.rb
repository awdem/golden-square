require "diary_entry"

# RSpec.describe DiaryEntry do
#   context "given a title and contents" do
#     it "creates a diary entry object" do
#       entry = DiaryEntry.new("day one", "this is the end of day one.")
#       expect(entry.exists?).to eq true
#     end
#   end
# end

RSpec.describe DiaryEntry do
  describe "#initialize" do
    context "given a title and contents" do
      it "constructs" do
        entry = DiaryEntry.new("day one", "this is the end of day one.")
        expect(entry.title).to eq "day one"
        expect(entry.contents).to eq "this is the end of day one."
      end  
    end

    context "given an empty string as title" do
      it "fails" do
        expect { entry = DiaryEntry.new("", "this is the end of day one.") }.to raise_error "No text in title!"
      end  
    end 
    
    context "given an empty string as contents" do
      it "fails" do
        expect { entry = DiaryEntry.new("day one", "") }.to raise_error "No text in contents!"
      end  
    end      
  end

  describe "#title" do
    context "given contents" do
      it "returns the title as a string" do
        entry = DiaryEntry.new("day one", "this is the end of day one.")
        expect(entry.title).to eq "day one"
      end
    end
  end

  describe "#contents" do
    context "given contents" do
      it "returns the contents as a string" do
        entry = DiaryEntry.new("day one", "this is the end of day one.")
        expect(entry.contents).to eq "this is the end of day one."
      end
    end
  end

  describe "#count_words" do
    it "returns the number of words in contents as an integer" do
      entry = DiaryEntry.new("day one", "this is the end of day one.")
      expect(entry.count_words).to eq 7
    end
  end

  describe "#reading_time"
    context "given an arbitrary wpm (250)" do
      it "returns the ceiling of minutes to read contents as an integer" do
        entry = DiaryEntry.new("day one", ("one " * 575))
        expect(entry.reading_time(250)).to eq 2
      end
    end

    context "given an arbitrary wpm of 0" do
      it "fails" do
        entry = DiaryEntry.new("day one", ("one " * 575))
        expect{ entry.reading_time(0) }.to raise_error "wpm must be above 0"
      end
    end
  
  describe "#reading_chunk" do
    context "given a text readable in the given minutes" do
      it "returns the whole of contents" do
        entry = DiaryEntry.new("day one", "one two three")
        chunk = entry.reading_chunk(3, 1)
        expect(chunk).to eq ("one two three")
      end
    end
    
    context "given a text that must be read in two chunks" do
      it "returns the first half when called once" do
        entry = DiaryEntry.new("day one", ("one two three four five"))
        chunk = entry.reading_chunk(4, 1)
        expect(chunk).to eq ("one two three four")
      end 

      it "returns the first half and the second half when called twice" do
        entry = DiaryEntry.new("day one", ("one two three four five"))
        entry.reading_chunk(4, 1)
        chunk = entry.reading_chunk(4, 1)
        expect(chunk).to eq ("five")
      end
      
      it "resets the chunk once the full contents have been read" do
        entry = DiaryEntry.new("day one", ("one two three four five"))
        entry.reading_chunk(4, 1)
        entry.reading_chunk(4, 1)
        chunk = entry.reading_chunk(4, 1)
        expect(chunk).to eq ("one two three four")
      end
      # what if it ends exactly on the word count.
      # does it fail if wpm is 0
    end
  end

end
