class MusicList
  def initialize
    @music_list = []
  end

  def add(track)
    fail 'no text in track!' if track.empty?
    @music_list << track
  end

  def list
    @music_list
  end
end