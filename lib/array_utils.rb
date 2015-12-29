module ArrayUtils
  # Write a method using inject and reject that
  # takes an array of integers and gets the sum for all numbers greater than 50
  def self.sum_over_50(arr)
    arr.reject{|n| n <= 50 }.inject {|sum, m| sum += m} || 0
  end

  # One of our favorite methods in Ruby 1.9 is each_with_object. 
  # It works much like inject. 
  # Use each_with_object to return an array containing one reversed string 
  # for each string that has an even number of characters.
  def self.even_sum(arr)
    arr.each_with_object([]){|s,a| a << s.reverse if s && s.length.even?}
  end
end
