#script2.rb
require 'json'

people = Array.new

person1 = Hash.new
person2 = Hash.new

person1["name"] = "John"
person1["surname"] = "Doe"

people.push person1

person2["name"] = "Jane"
person2["surname"] = "Smith"

people.push person2

jsonstring = people.to_json

puts jsonstring

