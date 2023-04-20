class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello I will repeat a string many times"
    @io.puts "Please enter a string"
    string = @io.gets.chomp.upcase
    @io.puts "Please enter a number of repeats"
    repeats = get_number
    @io.puts "Here is your result"
    @io.puts string * repeats
  end


  private

  def get_number
    number = @io.gets
    number =~ /\D/ ? (fail "Must be an integer!") : number.to_i
  end
end


# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX