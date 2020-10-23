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

  def contributors                  ## returns array of author instances who've written for this mag 
    Article.all.select do |article|
      article.magazine == self
   end.map do |arty|
    arty.author
    end
  end

  def self.find_by_name(name)   ## given a str of magazine name returns first mag obj that matches
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles              #returns array of str of all titles articles written for mag
    Article.all.select do |article|
      article.magazine == self
    end.map do |arty|
      arty.title
    end
  end

  def contributing_authors    #returns arr of authors who have contributed more than 2 art for mag
    ## iterate through contributors, 
    # if author instance occurs 2 or more times
    # put that author in new array
    self.contributors.select do |author|
          self.contributors.count(author) > 2
    end
  end
 
end

     




