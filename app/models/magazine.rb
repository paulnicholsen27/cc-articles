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
      x = contributors.map do |author|
       author.author.name
      end     ##  i think this works able halfway. 
              ## couldnt count the magazine related only to that author 
      x.count > 2
      # binding.pry     
   end 
end
