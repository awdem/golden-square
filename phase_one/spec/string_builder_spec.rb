require "string_builder"

RSpec.describe StringBuilder do
    it "add string inputs to a local variable and returns the string" do
        string = StringBuilder.new
        string.add("big")
        string.add("bigger")
        result = string.output   
        expect(result).to eq "bigbigger"
    end
    it "add string inputs to a local variable and returns the string length" do
        string = StringBuilder.new
        string.add("big")
        string.add("bigger")
        result = string.size   
        expect(result).to eq 9
    end
end