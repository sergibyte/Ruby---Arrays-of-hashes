#script4.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.select!{ |thehash| thehash["gender"] == 'male' }

puts "There are #{arrayofhashes.count} male users"