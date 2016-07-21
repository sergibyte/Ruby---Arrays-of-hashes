#script9.rb
require 'json'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.sort!{ |a,b| b["name"]["last"] <=> a["name"]["last"] }

arrayofhashes.each do |u|
	puts u["name"]["last"]
end