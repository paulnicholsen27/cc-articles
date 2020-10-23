require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

jkrowling = Author.new("JK Rowling")
leo_davinci = Author.new("Leonardo Davinci")
jrr_tolkien = Author.new("J.R.R. Tolkien")
tina_fey = Author.new("Tina Fey")
jerry_seinfeld = Author.new("Jerry Seinfield")

puts "Author knows it's name?"
puts jkrowling.name == ("JK Rowling")
puts "Author knows all of it's other authors?"
puts Author.all.include?(tina_fey)

vogue = Magazine.new("Vogue", "Fashion")
sunday_funnies = Magazine.new("Sunday Funnies", "Comedy")
time_out = Magazine.new("Time Out", "Lifestyle")
comedians_book = Magazine.new("Comedian's Book", "Comedy")

puts "Magazine knows it's name?"
puts vogue.name == ("Vogue")
puts "Magazine knows it's category?"
puts sunday_funnies.category == ("Comedy")
puts "Knows all of it's Magazines?"
puts Magazine.all.include?(time_out)

fasion_art = Article.new(leo_davinci, vogue, "The Modern Renaissance")
fasion_art = Article.new(leo_davinci, vogue, "Wrangle the  Flying Hvoem")
fasion_art = Article.new(leo_davinci, vogue, "Busty in the Cup")
comedy_art = Article.new(jerry_seinfeld, comedians_book, "Rolling in the Squirrel Poop")
lifestyle_art = Article.new(tina_fey, time_out, "Keeping it Juicy")
harrypot_art = Article.new(jkrowling, sunday_funnies, "Oodles of Muggles")

puts "Article knows it's title?"
puts harrypot_art.title == ("Oodles of Muggles")
puts "Knows all of it's artcles?"
puts Article.all.include?(lifestyle_art)

puts "Article knows it's author?"
puts comedy_art.author == jerry_seinfeld
puts "Article knows it's magazine?"
puts harrypot_art.magazine == sunday_funnies

puts "Knows Articles written?"
puts jkrowling.articles.include?(harrypot_art)
puts "Knows Magazines written?"
puts tina_fey.magazines.include?(time_out)

puts "Magazine knows Authors?"
puts vogue.contributors.include?(leo_davinci)
puts "Author can add an article?"
sassy = jkrowling.add_article(vogue, "sassy frogs")
puts jkrowling.articles.include?(sassy)
puts "Author knows categores contributed to?"
puts jkrowling.topic_areas.include?("Comedy")

puts "Knows matching Magazine name?"
puts Magazine.find_by_name("Vogue") == vogue
puts "Magazine knows it's article titles?"
puts time_out.article_titles.include?("Keeping it Juicy")
puts "Magazine knows authors who've written 2+ articles for magazine?"
puts vogue.contributing_authors.include?(leo_davinci)






### DO NOT REMOVE THIS
binding.pry

0
