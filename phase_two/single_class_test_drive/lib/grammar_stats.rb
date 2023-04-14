class GrammarStats
  def initialize
    @text_counter = 0
    @passed_tests = 0
  end

  def check(text) 
    fail "empty string not valid" if text == ""
    if text[0] == text[0].upcase && "!.?".include?(text[-1])
      @passed_tests += 1
      @text_counter += 1
      return true
    else
      @text_counter += 1
      return false
    end
  end

  # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  def percentage_good
    return 0 if @text_counter == 0
    ((@passed_tests / @text_counter.to_f) * 100).round
  end
end