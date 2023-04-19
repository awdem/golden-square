require 'music_library'

RSpec.describe MusicLibrary do
  it "constructs empty library" do
    music_library = MusicLibrary.new
    expect(music_library.all).to eq []
  end

  it "adds tracks to a library" do
    music_library = MusicLibrary.new
    track1 = double(:track)
    track2 = double(:track)
    music_library.add(track1)
    music_library.add(track2)

    expect(music_library.all).to eq [track1, track2]
  end

  describe '#search' do
    context "when tracks match keyword" do
      it "returns them as a list" do
        music_library = MusicLibrary.new
        track1 = double(:track, matches?: true)
        music_library.add(track1)
        result = music_library.search("test")

        expect(result).to eq [track1]
      end
    end
  end
end