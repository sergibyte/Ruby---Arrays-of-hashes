#script7.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.sort_by!{ |thehash| thehash["registered"] }

arrayofhashes.each do |u|
	puts u["registered"]
end