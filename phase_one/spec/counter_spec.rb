require "counter"

RSpec.describe Counter do
    it "adds an integer to a counter and reports the current sum" do
        counter = Counter.new
        counter.add(4)
        result = counter.report
        expect(result).to eq "Counted to 4 so far."
    end
        it "adds an integer to a counter and reports the current sum" do
        counter = Counter.new
        counter.add(4)
        counter.add(6)
        counter.add(0)
        result = counter.report
        expect(result).to eq "Counted to 10 so far."
    end
end