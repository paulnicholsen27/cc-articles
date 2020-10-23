class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles                        ## returns array of article instances author has written
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines                       ##returns unique array of Magazine instances author has contributed to 
    self.articles.map do |article|
      article.magazine
    end
  end

  def add_article(magazine, title)    ## create a new article and associate it with that author and mag
     Article.new(self, magazine, title)
  end

  def topic_areas                   ## returns array of categories st that mag author has contributed to
    self.magazines.map do |magazine|
      magazine.category
    end
  end
end
