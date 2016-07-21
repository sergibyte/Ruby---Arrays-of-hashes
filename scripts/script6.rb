#script6.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

firstnames = arrayofhashes.map{ |person| person["name"]["first"] }

puts firstnames