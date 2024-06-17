

def dictionary_sort(array)
  lower_array = array.map {|item| item.downcase}
  puts lower_array
  hash = Hash[lower_array.zip(array)]
  p hash
  if lower_array.length > 1
    pivot = lower_array.pop
    #puts "The pivot is #{pivot}"
    smaller, larger = [],[]
    lower_array.each do |value|
      if value < pivot
        smaller << value
      else
        larger << value
      end
    end
      #puts "The smaller array is #{smaller}"
      #puts "The larger array is #{larger}"
      lower_array = dictionary_sort(smaller) + [pivot] + dictionary_sort(larger)
  
  end
  
    lower_array

end

  euro_countries = ["France", "germany", "Italy", "spain", "Poland", "ukraine", "United Kingdom", "romania", "Netherlands", "belgium", "Greece", "portugal"]

  sorted_lower_array = dictionary_sort(euro_countries)
  p sorted_lower_array

  lower_unsorted_array = euro_countries.map {|item| item.downcase}
  puts lower_unsorted_array
  item_hash = Hash[lower_unsorted_array.zip(euro_countries)]
  p item_hash

  sorted_upper_and_lower_arr = []
  sorted_lower_array.each do |item|
    if item_hash.include?(item)
      sorted_upper_and_lower_arr << item_hash[item]
    end
  end

  p sorted_upper_and_lower_arr

 