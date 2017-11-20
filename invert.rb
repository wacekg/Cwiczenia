def invert_array (array)
  array1=[]
  array.each_with_index do |elem, index|
    array1 << -elem
  end
  puts "Tablica wejściowa: [#{array.join(',')}]"
  puts "Tablica przeciwna: [#{array1.join(',')}]"
end
invert_array([1, -2, 3, -4, 5])
