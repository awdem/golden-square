require 'diary'
require 'secret_diary'


RSpec.describe "integration" do
  it "unlocks a locked diary and reads it" do
    secret_diary = SecretDiary.new(diary = Diary.new("contents"))
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end

  it "unlocks a locked diary, then locks it again" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "fails to read a locked diary" do
    diary= Diary.new("contents")
    secret_diary = SecretDiary.new(diary)

    expect{ secret_diary.read }.to raise_error "Go away!"    
  end

end