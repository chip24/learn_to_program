class Dictionary
  attr_accessor :array, :array_lower

  def initialize(array)
    @array = array
    @array_lower = array.map {|item| item.downcase}
    #@item_hash = Hash[@array_lower.zip(@array)]
  end

  def create_hash
    @item_hash = Hash[@array_lower.zip(@array)]
    p @item_hash
  end

  # on 6-15, figure out if dictionary_sort works, how to return the sorted array, and how to return the sorted array of original capitalizations
  def dictionary_sort(array_lower)
    p array_lower
  
    if array_lower.length > 1
      pivot = array_lower.pop
      puts "The pivot is #{pivot}"
      smaller, larger = [],[]
      array_lower.each do |value|
        if value < pivot
          smaller << value
        else
          larger << value
        end
      end
      #puts "The smaller array is #{smaller}"
      #puts "The larger array is #{larger}"
      array_lower = dictionary_sort(smaller) + [pivot] + dictionary_sort(larger)
  
  end
  
    array_lower

end
  
end

  european_countries = ["France", "Germany", "Italy", "Spain", "Poland", "Ukraine", "United Kingdom", "Romania", "Netherlands", "Belgium", "Greece", "Portugal"]

  euro = Dictionary.new(european_countries)
  p euro
  euro.create_hash
  p euro.dictionary_sort(@array_lower)
