require 'greet.rb'

RSpec.describe "greet method" do
    it "returns 'Hello, Jeff!' when given 'Jeff'" do
        result = greet("Jeff")
        expect(result).to eq "Hello, Jeff!"
    end
end