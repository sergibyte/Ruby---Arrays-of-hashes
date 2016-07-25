#script11.rb
require 'json'
require 'date'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.each { |thehash|  thehash["addedToDB"] = Time.now }

puts arrayofhashes.first
