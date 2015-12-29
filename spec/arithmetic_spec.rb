require "arithmetic"

RSpec.describe Arithmetic do
  context ".happy_number?" do
    context "is" do
      it "7 and 986543210" do 
        expect(Arithmetic.happy_number?(7)).to be_truthy
        expect(Arithmetic.happy_number?(986543210)).to be_truthy
      end
    end

    context "is not" do
      it "2 and 189" do 
        expect(Arithmetic.happy_number?(2)).to be_falsey
        expect(Arithmetic.happy_number?(189)).to be_falsey
      end 
    end 
  end  

  context ".twenty_one?" do 
    it "should pass" do
      expect(Arithmetic.twenty_one?(3, 4, 5, 6, 3)).to be_truthy
      expect(Arithmetic.twenty_one?(3, 11, 10)).to be_falsy
      expect(Arithmetic.twenty_one?(10, 11)).to be_truthy
      expect(Arithmetic.twenty_one?(10, 10)).to be_falsy
    end
  end
end