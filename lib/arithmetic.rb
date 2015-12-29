module Arithmetic

  # Happy numbers are positive integers that follow a particular formula: 
  # take each individual digit, square it, 
  # and then sum the squares to get a new number. 
  # Repeat with the new number and eventually, 
  # you might get to a number whose squared sum is 1. 
  # This is a happy number. 
  # An unhappy number (or sad number) is one that loops endlessly. 
  # Write a function that determines if a number is happy or not.
  def self.happy_number?(number)
    sum = 0
    number.to_s.chars.each {|d| sum += d.to_i ** 2}
    return true if number == 1
    begin
      happy_number?(sum)
    rescue SystemStackError
      return false
    end
  end

  # Write a method called twenty_one? that takes any number of integers and 
  # returns true if they sum to 21, 
  #         false otherwise. 
  # Hint: splat operator.
  def self.twenty_one?(*args)
    args.inject {|sum, arg| sum += arg} == 21
  end
end