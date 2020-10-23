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
      article == self 
    end 
  end 


end
