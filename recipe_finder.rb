require "net/http"
require "json"

request = "https://www.themealdb.com/api/json/v1/1/search.php?s="

puts "Enter the name of a recipe."
#print "Name:  "

#name = gets.chomp
name = "lasagna"
url = URI(request + "#{name.downcase}")
#puts url

search_hash = JSON.parse(Net::HTTP.get(url))
#p search_hash
#p search_hash["meals"][0]["strMeal"]
#p search_hash["meals"][1]["strMeal"]


search_hash["meals"].each.with_index(1) do |recipe, idx|
  puts "#{idx}. #{recipe["strMeal"]}"
end
puts
print "Enter the number of the recipe you want: "
puts

number = 1

puts "Here are the ingredients you'll need for #{search_hash["meals"][number]["strMeal"]}: "
puts

chosen_recipe = search_hash["meals"][number]
#p chosen_recipe

chosen_recipe_no_nil = chosen_recipe.delete_if {|k,v| v.nil?}
#p chosen_recipe_no_nil

chosen_recipe_no_nil_no_blank = chosen_recipe_no_nil.delete_if {|k,v| v == "" || v == " "}

p chosen_recipe_no_nil_no_blank


# on 6-8 figure out how to remove all blank and nil values from the hash - saved a Stack Overflow link with possibilities
measures_arr =[]
chosen_recipe_no_nil_no_blank.each do |key,value|
  if key.start_with?("strMeasure") 
    measures_arr << value 
    #unless value == ""
  end
end

puts "MEASURES_ARR: #{measures_arr}"
clean_measures_arr = measures_arr.select {|ele| ele != " "}
puts "CLEAN_MEASURES_ARR: #{clean_measures_arr}"
clean_measures_no_nil = clean_measures_arr.compact
puts "CLEAN_MEASURES_NO_NIL: #{clean_measures_no_nil}"



num = 0
chosen_recipe_no_nil.each do |key, value|
  if key.start_with?("strIngredient")
     if value != "" || value != nil
      print "#{clean_measures_no_nil[num]} +  of "
      puts value
      #num += 1
     end
     num += 1
  end
end
puts
puts "And here are the cooking instructions and nutrition facts: "
puts chosen_recipe_no_nil["strInstructions"]
puts




# on 6-6-24 figure out how to list all of the meal names from lasagna search
#search_hash["meals"].each_with_index do |meal, idx|
#  puts "#{idx} and #{meal[idx]["strMeal"]}"
#end


#search_hash.each.with_index(1) do |meal, idx|
#  puts "idx #{meal["strMeal"]}"
#end
