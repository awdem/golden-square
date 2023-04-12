require "gratitudes"

RSpec.describe Gratitudes do 
  it "adds gratitude strings to an array, formats them and returns them" do
    gratitudes = Gratitudes.new
    gratitudes.add("Garry")
    gratitudes.add("Larry")
    gratitudes.add("Barry")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Garry, Larry, Barry"
  end
  it "adds gratitude integer, float and string to an array, formats them and returns them" do
    gratitudes = Gratitudes.new
    gratitudes.add(4)
    gratitudes.add(5.6)
    gratitudes.add("Barry")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: 4, 5.6, Barry"
  end
end 
