require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "subtracts two numbers using the terminal" do
    terminal = double :terminal
    calc = InteractiveCalculator.new(terminal)
    expect(terminal).to receive(:puts)
      .with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter a number").ordered
    expect(terminal).to receive(:gets)
      .and_return("4").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter another number").ordered
    expect(terminal).to receive(:gets)
      .and_return("2").ordered
    expect(terminal).to receive(:puts)
      .with("Here is your result:").ordered
    expect(terminal).to receive(:puts)
      .with("4 - 2 = 2").ordered

    calc.run
  end

  it "fails if the first number input is a string" do
    terminal = double :terminal
    calc = InteractiveCalculator.new(terminal)
    expect(terminal).to receive(:puts)
      .with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter a number").ordered
    expect(terminal).to receive(:gets)
      .and_return("jim").ordered

    expect { calc.run }.to raise_error "Not a number!"
  end

    it "fails if the second number input is a string" do
    terminal = double :terminal
    calc = InteractiveCalculator.new(terminal)
    expect(terminal).to receive(:puts)
      .with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter a number").ordered
    expect(terminal).to receive(:gets)
      .and_return("4").ordered
    expect(terminal).to receive(:puts)
      .with("Please enter another number").ordered
    expect(terminal).to receive(:gets)
      .and_return("b83").ordered

    expect { calc.run }.to raise_error "Not a number!"
    end

end