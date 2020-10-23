class Author
  
  attr_reader :name

  @@all_authors = []

  def initialize(name)
    @name = name
    @@all_authors << self
  end

  def self.all
    return @@all_authors
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end 
  end

  def magazines
    author_articles = Article.all.select do |article|
      article.author.name == self.name
    end
    magazines = []
    author_articles.each.uniq do |article|
      magazines << article.magazine 
    end
    return magazines
  end

  def add_article(magazine, title)
    # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    self.article.new(magazine, title)
    binding.pry
  end

  def topic_areas
    # Returns a **unique** array of strings with the categories of the magazines the author has contributed to
    
  end


end