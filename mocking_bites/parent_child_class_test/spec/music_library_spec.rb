require 'music_library'

RSpec.describe MusicLibrary do
  it "constructs empty library" do
    music_library = MusicLibrary.new
    expect(music_library.all).to eq []
  end

  it "adds tracks to a library" do
    music_library = MusicLibrary.new
    fake_track1 = double(:track)
    fake_track2 = double(:track)
    music_library.add(fake_track1)
    music_library.add(fake_track2)

    expect(music_library.all).to eq [fake_track1, fake_track2]
  end

  describe '#search' do
    context "when tracks match keyword" do
      it "returns them as a list" do
        music_library = MusicLibrary.new
        fake_track1 = double(:track, matches?: true)
        fake_track2 = double(:track, matches?: false)
        music_library.add(fake_track1)
        music_library.add(fake_track2)
        result = music_library.search("keyword")

        expect(result).to eq [fake_track1]
      end
    end
  end
end