require 'entry'

RSpec.describe Entry do
  it "constructs" do
    entry = Entry.new( "title", "contents")
    expect(entry.get_title).to eq "title"    
    expect(entry.get_contents).to eq "contents"    
  end
end