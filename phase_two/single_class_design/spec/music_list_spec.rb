require 'music_list'


RSpec.describe MusicList do
  context "when created" do
    it "returns an empty list" do
      music_list = MusicList.new
      expect(music_list.list).to eq []
    end
  end

  context "given a single track" do
    it "returns a list with that track" do
      music_list = MusicList.new
      music_list.add("Dead Flowers")
      expect(music_list.list).to eq ["Dead Flowers"]
    end
  end

  context "given an empty string for a track" do
    it "fails with 'no text in track!'" do
      music_list = MusicList.new
      expect { music_list.add("") }.to raise_error 'no text in track!'
    end
  end

  context "given multiple tracks" do
    it "returns a list of those tracks'" do
      music_list = MusicList.new
      music_list.add("Dead Flowers")
      music_list.add("Colorado Girl")
      expect(music_list.list).to eq ["Dead Flowers", "Colorado Girl"]
    end
  end

end