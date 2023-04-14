require "check_grammar"

RSpec.describe "check_grammar" do
  context "given an empty string" do
    it "returns false" do
      expect(check_grammar("")).to eq false
    end
  end

  context "given a string with no capital letter or punctuation" do
    it "returns false" do
      expect(check_grammar("one")).to eq false
    end
  end
  
  context "given a string with punctuation but no capital letter" do
    it "returns false" do
      expect(check_grammar("one two.")).to eq false
    end
  end

  context "given a string with a capital but no punctuation" do
    it "returns false" do
      expect(check_grammar("One")).to eq false
    end
  end

  context "given a string with a capital and punctuation" do
    it "returns true" do
      expect(check_grammar("One.")).to eq true
    end
  end

end