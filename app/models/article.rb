class Article

    @@all = []

    attr_reader :author, :magazine, :title

    def initialize(author, magazine, title)
        @author = author 
        @magazine = magazine
        @title = title
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def authors 
        Author.all.select do |author|
            author == self.author
        end 
    end 

    def magazines
        Magazine.all.select do |magazine| 
            magazine == self.magazine   
        end 
    end 


end
