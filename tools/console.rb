require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

aaron = Author.new("Aaron Dorito")
jerry = Author.new("Jerry Congnac")
matt = Author.new("Mathew Ellmore")

puts aaron.name =="Arron Dorito"
puts jerry.name =="Jerry Congnac"
puts matt.name =="Mattew Ellmore"





### DO NOT REMOVE THIS
# binding.pry

# 0
