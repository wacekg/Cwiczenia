def consecutives_sum (number)
  number1=[]
  sum=number[0]
  number.each_with_index do |elem, index|
    if number[index] == number[index+1]
      sum = sum+number[index+1]
    else
      number1 << sum
      sum = number[index+1]
    end
  end
  puts number1
end
consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
