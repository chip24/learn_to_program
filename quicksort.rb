def sort(arr)
  return arr if arr.length <= 1
    #puts arr.length
    pivot = arr.pop
    puts "the pivot is #{pivot}"
    smaller_elements = []
    larger_elements = []
  #while arr.length >= 1
    arr.each do |elem|
      
        if elem < pivot
          smaller_elements << elem
        #print "smaller_elements: "
        #p smaller_elements
        else
          larger_elements << elem
        #print "larger_elements: "
        #p larger_elements
        end


      smaller_sorted = sort(smaller_elements)
      larger_sorted = sort(larger_elements)
      smaller_sorted + [pivot] + larger_sorted

    end


  
end

european_countries = ["France", "Germany", "Italy", "Spain", "Poland", "Ukraine", "United Kingdom", "Romania", "Netherlands", "Belgium", "Greece", "Portugal"]

p sort(european_countries)