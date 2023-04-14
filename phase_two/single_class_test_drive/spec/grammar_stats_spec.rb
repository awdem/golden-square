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

  describe '#percentage_good' do
    context 'if nothing has been checked' do
      it 'returns 0' do
        grammar_stats = GrammarStats.new
        results = grammar_stats.percentage_good
        expect(results).to eq 0
      end
    end

    context 'if half checks pass' do
      it 'returns 50' do
        grammar_stats = GrammarStats.new
        text1 = 'Hello!'
        text2 = 'Hello again'
        grammar_stats.check(text1)
        grammar_stats.check(text2)

        results = grammar_stats.percentage_good
        expect(results).to eq 50
      end
    end

    context 'if two thirds of checks pass' do
      it 'returns 67' do
        grammar_stats = GrammarStats.new
        text1 = 'Hello!'
        text2 = 'Hello again'
        text3 = 'Hello x3.'
        grammar_stats.check(text1)
        grammar_stats.check(text2)
        grammar_stats.check(text3)
        results = grammar_stats.percentage_good
        expect(results).to eq 67
      end
    end

    context 'if percentage needs to be rounded down' do
      it 'returns 33' do
        grammar_stats = GrammarStats.new
        text1 = 'Hello,'
        text2 = 'Hello again'
        text3 = 'Hello x3.'
        grammar_stats.check(text1)
        grammar_stats.check(text2)
        grammar_stats.check(text3)
        results = grammar_stats.percentage_good
        expect(results).to eq 33
      end
    end
  end
end