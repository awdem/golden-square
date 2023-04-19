require 'music_library'
require 'track'

RSpec.describe 'music library integration' do
  xit "adds tracks to a library" do
    music_library = MusicLibrary.new
    track1 = Track.new("Silver", "Caribou")
    track2 = Track.new("Wow", "Kylie")
    music_library.add(track1)
    music_library.add(track2)

    expect(music_library.all).to eq [track1, track2]
  end
end