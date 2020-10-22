require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

alvaro = Author.new("Alvaro Garcia")
joe = Author.new("Joseph Stiglitz")

web_dev = Magazine.new("Paper WebDev", "programming")
web_dev2 = Magazine.new("Paper WebDev2", "programming2")

article1 = Article.new(alvaro, web_dev, "AI new paradigms")
article2 = Article.new(joe,web_dev, "www is global?")
article3 = Article.new(joe, web_dev, "Coders from the world")
article5 = Article.new(joe, web_dev, "xxxx")


# puts "Returns the author for that given article"
# puts article2.author == "Joseph Stiglitz" or joe ###question1


puts "Returns an array of Article instances the author has written"
puts joe.articles.include?(article2) #Article intances vs titles of articles

puts "returns a **unique** array of Magazine instances for which the author has contributed to"
puts alvaro.magazines == [web_dev]

puts "Returns an array of Author instances who have written for this magazine"
puts web_dev.contributors.include?(joe)

puts "given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine."

article4 = alvaro.add_article(web_dev, "The beggining of programming")

puts "Returns a **unique** array of strings with the categories of the magazines the author has contributed to"

puts joe.topic_areas.include?("programming")

puts "Given a string of magazine's name, this method returns the first magazine object that matches"

puts Magazine.find_by_name("Paper WebDev") == web_dev

puts "Returns an array strings of the titles of all articles written for that magazine"
puts web_dev.article_titles.include?("AI new paradigms")

puts "Returns an array of authors who have written more than 2 articles for the magazine"
puts web_dev.contributing_authors == [joe]


### DO NOT REMOVE THIS
binding.pry

0
