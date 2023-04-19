require "track"

RSpec.describe Track do
  it "matches keyword to song title" do
    track = Track.new("title", "artist")
   expect(track.matches?("title")).to eq true
  end

  it "matches keyword to artist " do
    track = Track.new("title", "artist")
   expect(track.matches?("artist")).to eq true
  end

  it "matches keyword to artist " do
    track = Track.new("title", "artist")
   expect(track.matches?("artist")).to eq true
  end

  it "returns false on no match " do
    track = Track.new("title", "artist")
   expect(track.matches?("song")).to eq false
  end
end