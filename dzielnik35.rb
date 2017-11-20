def multiples (n)
  sum=0
  (1..n).each do |n|
    if n%3==0 || n%5==0
      sum=sum+n
    end
  end
  puts sum
end
multiples(20)
