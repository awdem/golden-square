  def time_to_read(text)
    return "0 minutes" if text.empty?
    words = text.split(" ")
    reading_time = words.length.to_f / 200.00
    return "#{reading_time} minutes"
  end