def sum_array (array)
  sum=0
    array.each_with_index do |elem, index|
      sum=sum+elem
    end

  min=0
  array.each_with_index do |elem, index|
    if elem<min
      min=elem
    end
  end

  max=0
  array.each_with_index do |elem, index|
    if elem>max
      max=elem
    end
  end

  sum=sum-min-max
  puts sum
end
sum_array([120, 7, 145, -10, -15])
