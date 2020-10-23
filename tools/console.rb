require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

aaron = Author.new("Aaron Dorito")
jerry = Author.new("Jerry Congnac")
matt = Author.new("Mathew Ellmore")
mag1 = Magazine.new("NLF 2020", "Sports")
mag2 = Magazine.new("Cats 101", "Animal care")
mag3 = Magazine.new("Flatiron School", "Education")
article1 = Article.new(aaron, mag1, "2020 NFL Draft picks")
article2 = Article.new(jerry, mag2, "Take Better Care of Your Cat")
article3 = Article.new(matt, mag3, "Software Engineering")
#=====I tested everything inside the binding.pry =====
# puts aaron.name == "Aaron Dorito"
# puts jerry.name == "Jerry Congnac" 
# puts matt.name == "Mathew Ellmore"
# puts mag1.name
# puts mag1.category  
# puts mag2.name 
# puts mag3.category
# puts Magazine.all 
# puts article1.title
# puts Article.all 
# puts article2.authors
# puts article1.authors
# puts article3.magazines
# puts article2.magazines













### DO NOT REMOVE THIS
binding.pry

0
