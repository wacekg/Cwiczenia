def common_elements(array1, array2, array3=[])
  array1.each_with_index do |elem, index|
    if array2.include?(elem)
      array3 << elem
    end
  end
  puts array3
end
common_elements([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227])
