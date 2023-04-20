require "diary"

RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new("contents")
    expect(diary.read).to eq "contents"
  end
  
end