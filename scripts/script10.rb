#script10.rb
require 'json'
require 'date'
file = File.open("apiresults.json", "rb")
arrayofhashes = JSON.parse(file.read)["results"]

arrayofhashes.sort! do |a,b|
	a_dob = DateTime.strptime(a["dob"].to_s,'%s')
	b_dob = DateTime.strptime(b["dob"].to_s,'%s')

	comp = a_dob.mon <=> b_dob.mon	

	if comp == 0
		comp = a_dob.day <=> b_dob.mday
	end

	comp
end

arrayofhashes.each do |u|
	puts DateTime.strptime(u["dob"].to_s,'%s').strftime("%d %b %Y")
end