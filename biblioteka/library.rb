class Library
	attr_accessor :books, :clients, :lends
	def initialize
		@books = []
		@clients = []
	end
	def add_book(book)
		@books << book
	end
	def add_client(client)
		@clients << client
	end
end
