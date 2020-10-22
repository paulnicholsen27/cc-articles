class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select do |articles|
      articles.magazine == self
    end.map do |articles|
      articles.author
    end #we have two articles from the same author use uniq for delete repetitions
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      #binding.pry
      magazine.name == name
    end
  end

  def article_titles
    Article.all.select do |articles|
      #binding.pry
      articles.magazine == self
    end.map do |articles|
      articles.title
    end
  end

  def contributing_authors
    contributors.find_all do |e|
      contributors.count(e) > 2
        end.uniq
  end
    

  

end
