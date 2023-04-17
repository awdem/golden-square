require 'vowel_remover'

RSpec.describe "remove_vowels method" do
  it "removes a vowel from a simple string" do
    remover = VowelRemover.new("ab")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "b"
  end

  it "removes vowels from a complex string" do
    remover = VowelRemover.new("We will remove the vowels from this sentence.")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "W wll rmv th vwls frm ths sntnc."
  end
  
  context "given 'aeiou'" do          
    it "returns an empty string" do
      remover = VowelRemover.new("aeiou")
      result_no_vowels = remover.remove_vowels
      expect(result_no_vowels).to eq ""
    end
  end  

  context "given a string that starts with a vowel" do          
    it "removes the vowels" do
      remover = VowelRemover.new("All that I am.")
      result_no_vowels = remover.remove_vowels
      expect(result_no_vowels).to eq "ll tht  m."
    end
  end

  context "given a string that starts with two vowels" do          
    it "removes the vowels" do
      remover = VowelRemover.new("Aardvarks are cool.")
      result_no_vowels = remover.remove_vowels
      expect(result_no_vowels).to eq "rdvrks r cl."
    end
  end
   
end