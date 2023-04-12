def make_snippet(sentence)
  sentence.split(" ").size <= 5 ? sentence : sentence.split(" ").take(5).join(" ") + "..."
end
