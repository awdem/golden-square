###### original code:
# class VowelRemover
#   def initialize(text)
#     @text = text
#     @vowels = ["a", "e", "i", "o", "u"]
#   end

#   def remove_vowels()
#     i = 0
#     while i < @text.length()
#       binding.irb
#       if @vowels.include? @text[i].downcase
#         @text = @text.slice(0,i) + @text.slice(i+1..-1)
#       end
#       i += 1
#     end
#     return @text
#   end
# end

#  debugged code:
class VowelRemover
  def initialize(text)
    @text = text
    @vowels = ["a", "e", "i", "o", "u"]
  end

  def remove_vowels()
    i = 0
    while i < @text.length()
      if @vowels.include? @text[i].downcase
        @text = @text.slice(0,i) + @text.slice(i+1..-1)
      end
      i += 1 unless (@text.empty? || @vowels.include?(@text[i].downcase))
    end
    return @text
  end
end

remover = VowelRemover.new("Aardvarks are cool.")
p remover.remove_vowels


###### video debugged code:
# class VowelRemover
#   def initialize(text)
#     @text = text
#     @vowels = ["a", "e", "i", "o", "u"]
#   end

#   def remove_vowels()
#     i = 0
#     while i < @text.length()
#       binding.irb
#       if @vowels.include? @text[i].downcase
#         @text = @text.slice(0,i) + @text.slice(i+1..-1)
#       else
#       i += 1
#       end
#     end
#     return @text
#   end
# end