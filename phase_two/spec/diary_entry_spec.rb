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
  context "given a title and contents" do
    it "returns the title as a string" do
      entry = DiaryEntry.new("day one", "this is the end of day one.")
      expect(entry.title).to eq "day one"
    end

    it "returns the contents as a string" do
      entry = DiaryEntry.new("day one", "this is the end of day one.")
      expect(entry.contents).to eq "this is the end of day one."
    end

    it "Returns the number of words in the contents as an integer" do
      entry = DiaryEntry.new("day one", "this is the end of day one.")
      expect(entry.count_words).to eq 7
    end

  end
end
