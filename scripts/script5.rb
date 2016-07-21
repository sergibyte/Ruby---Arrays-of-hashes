#script5.rb
require 'json'
require 'date'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

mondayborn = arrayofhashes.select do |thehash|
	dob = DateTime.strptime(thehash["dob"].to_s,'%s')
	if dob.wday == 1
		isMonday = true
	else
		isMonday = false
	end

	isMonday
end

puts "There are #{mondayborn.count} users born in a Monday"
puts mondayborn.first["dob"].to_s + " - " + DateTime.strptime(mondayborn.first["dob"].to_s,'%s').strftime("%+")