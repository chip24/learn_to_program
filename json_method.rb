require "json"

def json_save(object, filename)
  File.open(filename, "w") do |f|
    f.write(object.to_json)
  end
end

def json_load(filename)

  json_string = File.read(filename)

  JSON.parse(json_string)
end

test_array = ["Slick Shoes", "Bully Blinders", "Pinchers of Peril",]

gadget_file = "DatasGadgets.txt"

json_save(test_array, gadget_file)
read_array = json_load(gadget_file)
puts read_array
puts (read_array == test_array)
