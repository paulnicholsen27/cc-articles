class Magazine
  attr_accessor :name, :category

  @@all_magazines = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all_magazines << self

  end

  def self.all
    return @@all_magazines
  end
  
  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def contributors
      magazine_articles = Article.all.select do |article|
      article.magazine == self
    end
      authors = []
      magazine_articles.each do |article|
        authors << article.author
      end
    
     return authors
  end

  def article_titles
        # Returns an array of strings of the titles of all articles written for that magazine
        magazine_articles = Article.all.select do |article|
          article.magazine == self
        end
          titles = []
          magazine_articles.each do |article|
            titles << article.title
          end
        
         return titles
    
  end


end
