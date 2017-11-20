def sum_array (array)
  sum=0
    array.each do |elem|
      sum=sum+elem
    end

  min=array[0]
  array.each do |elem|
    if elem<min
      min=elem
    end
  end

  max=array[0]
  array.each do |elem|
    if elem>max
      max=elem
    end
  end

  sum=sum-min-max
  puts sum
end
sum_array([1, 2, 3])
