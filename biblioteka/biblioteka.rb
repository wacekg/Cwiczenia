require "./book.rb"
require "./client.rb"
require "./library.rb"
require "pry"

book1=Book.new('Harry Poter', 'J.K.Rowling')
book2=Book.new('Dziady', 'Adam Mickiewicz')
book3=Book.new('Krzyżacy', 'Henryk Sienkiewicz')
book4=Book.new('Lalka', 'Bolesław Prus')
book5=Book.new('Ogniem i Mieczem', 'Henryk Sienkiewicz')
book6=Book.new('Potop', 'Henryk Sienkiewicz')
book7=Book.new('Balladyna', 'Juliusz Słowacki')
book8=Book.new('Wojna i pokój', 'Lew Tołstoj')
book9=Book.new('Romeo i Julia', 'William Szekspir')
book10=Book.new('Odyseja', 'Hometr')

client1=Client.new('Jan Kowalski')
client2=Client.new('Andrzej Nowak')
client3=Client.new('Wacław Gajda')

library=Library.new
library.add_book(book1)
library.add_book(book2)
library.add_book(book3)
library.add_book(book4)
library.add_book(book5)
library.add_book(book6)
library.add_book(book7)
library.add_book(book8)
library.add_book(book9)
library.add_book(book10)

library.add_client(client1)
library.add_client(client2)
library.add_client(client3)

# binding.pry
library.books.each do |elem|
  puts "Tytuł: #{elem.title}, Autor: #{elem.author}"
end
library.clients.each do |elem|
  puts "Czytelnik: #{elem.name}"
end
