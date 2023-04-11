require "check_codeword"

RSpec.describe "check_codeword method" do 
    it "returns 'Correct! Come in.' if given 'horse" do
        result = check_codeword("horse")
        expect(result).to eq 'Correct! Come in.'
    end
    it "returns 'Close, but nope.' if given 'hare'" do
    result = check_codeword("hare")
    expect(result).to eq 'Close, but nope.'
    end
   it "returns 'WRONG!' when given 'peter'" do
    result = check_codeword("peter")
    expect(result).to eq 'WRONG!'
    end
end