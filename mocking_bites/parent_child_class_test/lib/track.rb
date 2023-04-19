class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    @title.match(keyword) || @artist.match(keyword) ? true : false
  end
end