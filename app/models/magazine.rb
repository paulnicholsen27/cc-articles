class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def contributors
   Article.all.select do |articles|
      articles.magazine == self
   end.map do |articles|
    articles.author
   end
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def articles_titles
    Article.all.select do |article|
      article.magazine == self
    end.map do |article|
      article.title
    end
  end

  def contributing_authors
    self.contributors.select{ |article| contributors.count(article) > 1 }
  end

end
