require 'pry'

class Author

  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    articles_array = Article.all.select do |article|
      article.author == self 
      end
      return articles_array
  end

  def magazines
    self.articles.map do |article|
      article.magazine
      end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.articles.map do |article|
      article.magazine.category
    end.uniq
  end


end
