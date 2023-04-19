require 'music_library'
require 'track'

RSpec.describe 'music library integration' do
  it "adds tracks to a library" do
    music_library = MusicLibrary.new
    track1 = Track.new("Silver", "Caribou")
    track2 = Track.new("Wow", "Kylie")
    music_library.add(track1)
    music_library.add(track2)

    expect(music_library.all).to eq [track1, track2]
  end

  it 'searches library for a keyword and returns tracks that match the keyword' do
    music_library = MusicLibrary.new
    track1 = Track.new("Silver", "Caribou")
    track2 = Track.new("Wow", "Kylie")
    music_library.add(track1)
    music_library.add(track2)
    result = music_library.search("Wow")

    expect(result).to eq [track2]
  end
 
  it 'returns an empty list when no match to keyword' do
    music_library = MusicLibrary.new
    track1 = Track.new("Silver", "Caribou")
    track2 = Track.new("Wow", "Kylie")
    music_library.add(track1)
    music_library.add(track2)
    result = music_library.search("Bang")

    expect(result).to eq []
  end

end