require "present"

RSpec.describe Present do
  it "wraps and unwraps succesfully" do
  present = Present.new
  present.wrap("chocolate")
  results = present.unwrap
  expect(results).to eq "chocolate"
  end
  context "throws an error" do
    it "wrap and then wrap again" do
      present = Present.new
      present.wrap("chocolate")
      expect { present.wrap("flower") }.to raise_error "A contents has already been wrapped."
    end
    it "unwrap and empty present" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end 
end