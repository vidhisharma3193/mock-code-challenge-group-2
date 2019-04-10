
class Book

    attr_accessor :title, :word_count

    @@all = []

    def initialize(title,word_count)
        @title = title
        @word_count = word_count

        @@all << self
    end

    def self.all
        @@all
    end

    def authors
        results = BookAuthor.all.select do |bookauthor|
                    bookauthor.book == self
                end

        authors = results.map do |result|
                    result.author
                end
    end



end