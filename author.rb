class Author

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name =  name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        results = BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
        end

        books = results.map do |result|
            result.book
        end
    end

    def write_book(title,word_count)
        book = Book.new(title,word_count)
        BookAuthor.new(book,self)

    end

    def total_words
        total = 0
        self.books.each do |book| 
            total += book.word_count
            #total = total + book.word_count
        end

        total

    end

    def self.most_words

        self.all.max_by do |author|
            author.total_words
        end
    end


end
