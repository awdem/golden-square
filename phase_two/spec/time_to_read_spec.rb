require 'time_to_read'

RSpec.describe "time_to_read" do
  context "given an empty string" do
    it "returns an estimated reading time of 0 minutes" do
      expect(time_to_read("")).to eq "0 minutes"
    end
  end

  context "given a short string of words" do
    it "returns the estimated reading time assuming 200 words per minute" do
      expect(time_to_read("this book")). to eq "0.01 minutes"
    end
  end  
  context "given a longer string of words" do  
    it "returns an estimated reading time of a longer string assuming 200 words per minute" do
      expect(time_to_read("hello hi hello hi hello hi hello hi hi hello hello hi hello hi hello hi hello hi hi hello")).to eq "0.1 minutes"
    end
  end  
endf