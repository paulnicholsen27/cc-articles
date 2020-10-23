class Author

  @@all = []
  attr_reader :name 

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def articles 
    Article.all.select do |article|
      article.author == self 
    end 
  end 

  def magazines
    articles.select do |article|
      article.author == self
        article.magazine
    end 
  end 

  def add_article(magazine, title)
    new_article = Article.new(self, magazine, title)
  end 

  def topic_areas
    articles.select do |article|
      article.author == self
       article.magazine.category  
    end 

  end 

end
