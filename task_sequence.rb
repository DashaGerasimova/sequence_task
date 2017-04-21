puts "Enter the number of steps:"
n = gets.to_i

sequence = [1]

n.times do 
  temp = [] #array to store and count same elements
  result = []

  p sequence #print current sequence
  sequence << nil #Nil element is required to finish the result

  sequence.each do |i|
    if temp.last == i || temp.empty?
      temp.push(i) 
    else 
      result << temp.count 
      result << temp.last

      temp = [i]
    end
  end

  sequence = result

end