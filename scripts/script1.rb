#script1.rb
require 'json'

file = File.open("apiresults.json", "rb")
contents = file.read

jsonobject = JSON.parse contents

arrayofhashes = jsonobject["results"]

puts arrayofhashes.count