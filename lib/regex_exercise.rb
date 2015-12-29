module RegexExercise

  def self.phone_number? (number_string)
    len = number_string.gsub(/[^0-9]/,'').length
    nonDigLen = number_string.gsub(/(-|\(|\)| |\d)/,'').length
    nonDigLen == 0 && (len == 7 || len == 10)
  end

  def self.find_email (input_string)
    input_string.scan(/\w+@\w+\.[a-z]{2,3}/)
  end

  def self.separate_with_comma(input_number)
  	


  end

  def self.string_to_2_d_array(input_string)
    arr = []
    input_string.lines.each do |str|
      arr.push([str.split(':')[0].split(' ')[0], str.match(/([A-Z][A-Z|a-z]+ )+[A-Z][A-Z|a-z]+/).to_s])
    end
    arr
  end
end