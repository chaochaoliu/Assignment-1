require "array_utils"

RSpec.describe ArrayUtils do 
  context ".sum_over_50" do 
    it "should sum all number over 50" do
     expect(ArrayUtils.sum_over_50([29, 52, 77, 102])).to be == 231
     expect(ArrayUtils.sum_over_50([5, 11, 50])).to be == 0
     expect(ArrayUtils.sum_over_50([4, 8, 15, 16, 23, 42])).to be == 0
     expect(ArrayUtils.sum_over_50([300, 22, 1, 55, 42])).to be == 355
    end
  end

  context ".even_sum" do 
    it "should return an array containing reversed string" do
      expect(ArrayUtils.even_sum(["cat", "dog", "bird", "fish"])).to be == ["drib", "hsif"]
      expect(ArrayUtils.even_sum(["why", "chunky", nil, "lucky", "stiff"])).to be == ["yknuhc"]
      expect(ArrayUtils.even_sum(["rewsna", "hitch hiker", "si", "guide", "galaxies ", "24"])).to be == ["answer", "is", "42"]
    end
  end
end