require 'entry'

RSpec.describe Entry do
  it "constructs" do
    entry = Entry.new( "title", "contents")
    expect(entry.get_title).to eq "title"    
    expect(entry.get_contents).to eq "contents"    
  end

  describe "word_count" do
    context "given an entry" do
      it "counts the words" do
        entry = Entry.new("my title", ("one " * 200))
        expect(entry.word_count).to eq 200
      end
    end

    context "given an empty entry" do
      it "returns 0" do
        entry = Entry.new("my title", "")
        expect(entry.word_count).to eq 0
      end
    end
  end      
  describe "#reading_time" do
    context "given an entry" do
        it "estimates the reading time" do
          entry = Entry.new("my title", ("one " * 200))
          expect(entry.reading_time(100)).to eq 2
        end
      end
  end
end