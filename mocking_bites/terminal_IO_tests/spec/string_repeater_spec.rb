require 'string_repeater'

RSpec.describe StringRepeater do
  it "takes a string and a number (n) and repeats the string n times" do
    io = double :io
    expect(io).to receive(:puts)
      .with("Hello I will repeat a string many times").ordered
    expect(io).to receive(:puts)
      .with("Please enter a string").ordered
    expect(io).to receive(:gets)
      .and_return("Twix").ordered
    expect(io).to receive(:puts)
      .with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets)
      .and_return("4").ordered
    expect(io).to receive(:puts)
      .with("Here is your result").ordered
    expect(io).to receive(:puts)
      .with("TWIXTWIXTWIXTWIX").ordered

    repeater = StringRepeater.new(io)
    repeater.run
  end

  it "fails if string input is an integer" do
    io = double :io
    expect(io).to receive(:puts)
      .with("Hello I will repeat a string many times").ordered
    expect(io).to receive(:puts)
      .with("Please enter a string").ordered
    expect(io).to receive(:gets)
      .and_return("4").ordered
    expect(io).to receive(:puts)
      .with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets)
      .and_return("barry").ordered

    repeater = StringRepeater.new(io)
    expect{ repeater.run }.to raise_error "Must be an integer!"
  end
end