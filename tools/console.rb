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
#=====I tested everything inside the binding.pry =====
# puts aaron.name == "Aaron Dorito"
# puts mag1.name   
# puts mag3.category
# puts Magazine.all 
# puts article1.title
# puts Article.all 
# puts article2.authors
# puts article3.magazines
# puts aaron.articles
# puts matt.magazines
# mag1.contributors
# puts jerry.add_article(mag2, "Feeding Times For Cats")
# puts aaron.topic_areas
# puts Magazine.find_by_name("NFL 2020")
# mag1.article_titles
mag2.contributing_authors














### DO NOT REMOVE THIS
binding.pry

0
