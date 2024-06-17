h = {"Chris Hemsworth"=>"Aug 11 1983", "Chris Evans"=>"June 13 1981", "Chris Pratt"=>"June 21 1979", "Chris Pine"=>"Aug 26 1980", "Other Chris Pine"=>"Aug 3 1976"}

=begin
puts "​Chris Evans".length
evans_remove = "​Chris Evans".gsub("\u200B", '')
puts evans_remove.length

no_invis_space = h.each do |k,v|
  puts k.length
  puts k
  k.gsub!(/a/,"")
  #k.gsub("\u200B", '')
  puts k.length
  #v.gsub(/[\u200B-\u200D\uFEFF]/, '')
end
puts no_invis_space
=end


p h["Chris Hemsworth"]
p h["Chris Evans"]
p h["Chris Pratt"]

nam = "name"
pro = "profession"
ran = "ranking"
gra = "grandmaster?"

profile = {
  "name" => "Magnus",
  "profession" => "chess player",
  "ranking" => 1,
  "grandmaster?" => true
}

# "name", "profession", "ranking", and "grandmaster?" are the keys. "Magnus", "chess player", 1 and true are the values.

puts profile[nam] # => Magnus
puts profile[pro]
puts profile[ran]
puts profile[gra]