require 'pry'
require_relative './book.rb'
require_relative './author.rb'
require_relative './book_author.rb'

book1 = Book.new("Gaming",5000)
book2 = Book.new("TEST",5000)



author1 = Author.new("VIDHI")
author2 = Author.new("Charles")


ba1 = BookAuthor.new(book1,author1)
ba2 = BookAuthor.new(book1,author2)
ba3 = BookAuthor.new(book2,author2)



binding.pry
0
