class MusicLibrary
  def initialize
    @library = []
  end

  def add(track)
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    @library.filter{ |track| track.matches?(keyword) }
  end
end