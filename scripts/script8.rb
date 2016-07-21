#script8.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.sort!{ |a,b| a["name"]["last"] <=> b["name"]["last"] }

arrayofhashes.each do |u|
	puts u["name"]["last"]
end