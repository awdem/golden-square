require "check_for_todos"

RSpec.describe "check_for_todos" do
  context "given an empty string" do
    it "raises an error" do
      expect{ check_for_todos?("") }.to raise_error "There is no text!"
    end
  end

  context "given a string with words but it doesn't contain #TODO"
    it "returns false" do
      expect(check_for_todos?("word")).to eq false
    end

    context "given a string with words that does contain #TODO"
    it "returns true" do
      expect(check_for_todos?("#TODO")).to eq true
    end

    context "given a string with words similar to #TODO but not the same"
    it "returns false" do
      expect(check_for_todos?("todo")).to eq false
    end
end

