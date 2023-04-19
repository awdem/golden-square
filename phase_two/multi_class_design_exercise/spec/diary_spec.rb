require 'diary'


RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new
    expect(diary.see_entry_list).to eq []    
  end
end