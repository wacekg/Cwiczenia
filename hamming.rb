def hamming_distance (string1, string2)
  string1=string1.split('')
  string2=string2.split('')
  n=0
  sum=0
  if string1.length==string2.length
    while n<string1.length do
      if string1[n]!=string2[n]
        sum=sum+1
      end
      n=n+1
    end
    puts sum
  else
    puts string1[string1.length] #ta wartość jest nil sprawdziłem w pry, można napisać puts "nil" ale chyba nie o to chodzi
  end
end
hamming_distance('GAGCCT', 'CATCGT')
