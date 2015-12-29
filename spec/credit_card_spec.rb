require 'credit_card'

RSpec.describe CreditCard do 
  it "#number should be defined" do 
    expect(CreditCard.new("1234567890123456").number).to be == "1234567890123456"
  end

  it "#number= should not be defined" do 
    expect(CreditCard.new("1234567890123456")).not_to respond_to :number=
  end

  it "#valid?" do 
    expect(CreditCard.new("1234567890123456").valid?).to be_falsey
    expect(CreditCard.new("4408041234567893").valid?).to be_truthy
    expect(CreditCard.new("440804l234567893").valid?).to be_falsey
    expect(CreditCard.new("38520000023237").valid?).to be_truthy # diner's club
    expect(CreditCard.new("4222222222222").valid?).to be_truthy # visa cards have either 13 or 16 digits
  end
end
