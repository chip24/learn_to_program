def quick_sort(array)
  if array.length > 1
    pivot = array.pop
    puts "The pivot is #{pivot}"
    smaller, larger = [],[]
    array.each do |value|
      if value < pivot
        smaller << value
      else
        larger << value
      end
    end
      puts "The smaller array is #{smaller}"
      puts "The larger array is #{larger}"
      array = quick_sort(smaller) + [pivot] + quick_sort(larger)
  
  end
  
    array
  
end

  european_countries = ["France", "Germany", "Italy", "Spain", "Poland", "Ukraine", "United Kingdom", "Romania", "Netherlands", "Belgium", "Greece", "Portugal"]

  p quick_sort(european_countries)

  arr = Array.new(20) {rand(0..100)}
  #p arr

  #p quick_sort(arr)