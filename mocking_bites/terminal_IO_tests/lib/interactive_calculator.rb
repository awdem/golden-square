class InteractiveCalculator 
 def initialize(terminal)
  @terminal = terminal
 end

 def run
  @terminal.puts "Hello. I will subtract two numbers."
  @terminal.puts "Please enter a number"
  num1 = get_number
  @terminal.puts "Please enter another number"
  num2 = get_number
  @terminal.puts "Here is your result:"
  @terminal.puts "#{num1} - #{num2} = #{num1 - num2}"
end

private 

def get_number
  number = @terminal.gets
  number =~ /\D/ ? (fail "Not a number!") : number.to_i
end
end

# Example Call
# =============
# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run


# Example Output
# ==============
# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1