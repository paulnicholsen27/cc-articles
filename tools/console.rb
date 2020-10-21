require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
gary = Author.new("Gary Ownens")
toni = Author.new("Toni Morrison")
keri = Author.new("Keri Washington")
lebron = Author.new("Lebron James")

magazine1 = Magazine.new("People", "Entertainment")
magazine2 = Magazine.new("Time", "News")
magazine3 = Magazine.new("National Geographic", "Educational")
magazine4 = Magazine.new("Forbes", "Business")

article1= Article.new(keri, magazine1, "Where theres a will, there is a way")
article2= Article.new(toni, magazine2, "While I'm Here")
article3= Article.new(lebron, magazine2, "Mr. 4 Rings")
article4= Article.new(lebron, magazine4, "I can do it all")
article5= Article.new(toni, magazine2, "Where I stand")

gary.add_article(magazine1, "This is the end")



### DO NOT REMOVE THIS
binding.pry

0
