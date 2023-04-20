require 'secret_diary'

RSpec.describe SecretDiary do
  context "initially" do
    it "locks the diary" do
      diary_dbl = double :diary_dbl
      secret_diary = SecretDiary.new(diary_dbl)

      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end

  it "unlocks a locked diary" do
    diary_dbl = double :diary_dbl, read: "FAKE CONTENTS"
    secret_diary = SecretDiary.new(diary_dbl)
    secret_diary.unlock

    expect(secret_diary.read).to eq "FAKE CONTENTS"
  end

  it 'locks an unlocked diary' do
    diary_dbl = double :diary_dbl
    secret_diary = SecretDiary.new(diary_dbl)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

end