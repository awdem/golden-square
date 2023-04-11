require "report_length"

RSpec.describe "report_length method" do
    it "return 'This string was 4 characters long.' when given 'hare'" do
        result = report_length("hare")
        expect(result).to eq 'This string was 4 characters long.'
    end
    it "return 'This string was 7 characters long.' when given 'stevens'" do
        result = report_length("stevens")
        expect(result).to eq 'This string was 7 characters long.'
    end
    it "return 'This string was 0 characters long.' when given ''" do
        result = report_length("")
        expect(result).to eq 'This string was 0 characters long.'
    end
end