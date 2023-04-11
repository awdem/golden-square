require "string_builder"

RSpec.describe StringBuilder do
    it "adds input to a string and returns the string" do
        string = StringBuilder.new
        string.add("big")
        string.add("bigger")
        result = string.output   
        expect(result).to eq "bigbigger"
    end
    it "adds input to a string and returns the string length" do
        string = StringBuilder.new
        string.add("big")
        string.add("bigger")
        result = string.size   
        expect(result).to eq 9
    end
end