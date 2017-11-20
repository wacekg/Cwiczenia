def queue_time (queue, cash)
  wait=[]                    #tablica sumy czasów kas
  i=0
  while i < cash             # przypisanie pierwszych klientów do kas
    wait << queue[0]
    queue.delete_at(0)
    i+=1
  end
  until queue[0] == nil      #przekazywanie kolejnych klientów do tablicy kas
    wait.sort!
    wait << (queue[0]+wait[0])
    queue.delete_at(0)
    wait.delete_at(0)
  end
  puts wait.max              #największy element tablicy - najdłuższa kolejka
end
queue_time([2, 3, 10], 2)
