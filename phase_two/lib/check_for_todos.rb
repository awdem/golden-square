def check_for_todos?(text)
  fail "There is no text!" if text.empty?
  text.include?("#TODO") ? true : false
end