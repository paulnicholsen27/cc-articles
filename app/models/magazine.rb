class Magazine

  @@all = []
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all 
    @@all 
  end 

  def contributors 
    Article.all.select do |article|
        article.magazine == self 
          article.author  
    end 
  end 

  def self.find_by_name(name)
    self.all.find do |names|
      names.name == name 
    end 
  end 

  def article_titles
    contributors.select do |t|
      t.magazine == self 
        t.title 
    end 
  end 

  def contributing_authors
    contributors.select do |author|
      author.title.count < 2
        author.author
    binding.pry
    end 
  end 
end
