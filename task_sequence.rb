puts "Enter the number of steps:"
n = gets.to_i

sequence = [1]

n.times do 

  result = []
    
  repeating_number = nil
  repeat_count = 0

  sequence.each do |i|

    repeating_number ||= i
    if repeating_number == i  # || temp.empty?
      repeat_count += 1
    else 
      result << repeat_count 
      result << repeating_number

      repeating_number = i
      repeat_count = 1
    end
  end

  result << repeat_count 
  result << repeating_number

  p result

  sequence = result

end
