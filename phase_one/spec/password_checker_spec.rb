require 'password_checker'

RSpec.describe PasswordChecker do
  it "checks a password thats > 8 characters long" do
    password_check = PasswordChecker.new
    result = password_check.check("gogglebox")
    expect(result).to eq true
  end 

  it "checks a password thats 8 characters long" do
    password_check = PasswordChecker.new
    result = password_check.check("gogglebo")
    expect(result).to eq true
  end 

  it "fails if password is less than 8 chars" do
    password_check = PasswordChecker.new
    expect{ password_check.check("box") }.to raise_error "Invalid password, must be 8+ characters."
  end  
end