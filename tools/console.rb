require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

aaron = Author.new("Aaron Dorito")
jerry = Author.new("Jerry Congnac")
matt = Author.new("Mathew Ellmore")
mag1 = Magazine.new("NFL 2020", "Sports")
mag2 = Magazine.new("Cats 101", "Animal care")
mag3 = Magazine.new("Flatiron School", "Education")
article1 = Article.new(aaron, mag1, "2020 NFL Draft picks")
article2 = Article.new(aaron, mag2, "Take Better Care of Your Cat")
article3 = Article.new(matt, mag3, "Software Engineering")
article4 = Article.new(aaron, mag3, "Software Engineering")
#=====I tested everything inside the binding.pry =====
puts "testing author name returns Arron Dorito"
puts aaron.name == "Aaron Dorito"
puts "magazine name NFL 2020"
puts mag1.name   
puts " magazine category Education"
puts mag3.category
puts "shows all magazines"
puts Magazine.all 
puts "article returns title NFL 202 Draft picks"
puts article1.title
puts "shows all article instances"
puts Article.all 
puts "article authors"
puts article2.authors
puts "article magazine flatiron school education"
puts article3.magazines
puts " arrons articles "
puts aaron.articles
puts " matts magazines"
puts matt.magazines
puts " NFL 202 sports author"
puts mag1.contributors
puts "adds new article"
pp jerry.add_article(mag2, "Feeding Times For Cats")
puts aaron.topic_areas
puts Magazine.find_by_name("NFL 2020")
puts mag1.article_titles
puts mag1.contributing_authors















### DO NOT REMOVE THIS
# binding.pry

# 0
