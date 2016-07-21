#script3.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

onlymales = arrayofhashes.select{ |thehash| thehash["gender"] == 'male' }

puts "There are #{arrayofhashes.count} users"
puts "There are #{onlymales.count} males"