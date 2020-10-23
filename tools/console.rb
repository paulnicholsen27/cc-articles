require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Emily Post")
author2 = Author.new("Abigail vanBuren")
author3 = Author.new("Minnie Mouse")

mag1 = Magazine.new("Time", "News")
mag2 = Magazine.new("People", "Pop Culture")
mag3 = Magazine.new("Disney", "Everything Disney")

art1 = Article.new(author1, mag1, "Ouch")
art2 = Article.new(author1, mag2, "Johnny Plays Guitar")
art3 = Article.new(author3, mag3, "Oh Mickey!")
art4 = Article.new(author2, mag1, "My Memoir")
# art5 = Article.new(author1, mag1, "Awww!")

puts Author.all == [author1, author2, author3]
puts author1.name == "Emily Post"

puts mag1.name == "Time"
puts mag2.name == "People"
puts mag1.category == "News"
puts Magazine.all == [mag1, mag2, mag3]

puts art1.title == "Ouch"
puts art3.title == "Oh Mickey!"
puts Article.all == [art1, art2, art3, art4]
puts art1.author.name == "Emily Post"
puts art2.author == author1
puts art3.magazine.name == "Disney"
puts art4.magazine.name == "Time"
puts author3.articles == [art3]
puts author1.magazines == [mag1, mag2]

puts "This is a test"
puts Magazine.find_by_name("People") == mag2
puts mag1.contributors == [author1, author2]
puts mag3.article_titles == ["Oh Mickey"]
puts author1.topic_areas == ["News", "Pop Culture"]
# puts mag1.article_titles == ["Ouch", "My Memoir"]




### DO NOT REMOVE THIS
binding.pry

0
