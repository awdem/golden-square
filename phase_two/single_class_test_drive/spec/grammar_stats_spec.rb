require 'grammar_stats'

RSpec.describe GrammarStats do
  describe "#check" do
    context "given an empty string" do
      it "fails" do
        grammar_stats = GrammarStats.new
        expect { grammar_stats.check("") }.to raise_error "empty string not valid"
      end
    end

    context "given valid strings" do
      it "returns true with full stop" do
        grammar_stats = GrammarStats.new
        is_punctual = grammar_stats.check("Hello there.")
        expect(is_punctual).to eq true
      end

      it "returns true with exclamation mark" do
        grammar_stats = GrammarStats.new
        is_punctual = grammar_stats.check("Hello there!")
        expect(is_punctual).to eq true
      end
    end

    context "given an invalid string" do
      it "returns false" do
        grammar_stats = GrammarStats.new
        is_punctual = grammar_stats.check("hello there.")
        expect(is_punctual).to eq false
      end

      it "returns false when capitalized but no punctuation" do
        grammar_stats = GrammarStats.new
        is_punctual = grammar_stats.check("Hello there")
        expect(is_punctual).to eq false
      end
    end


  end
end