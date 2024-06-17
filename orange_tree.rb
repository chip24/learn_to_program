class OrangeTree

  def initialize(name)
    @name = name
    @height = 0
    @age = 0
    @num_of_oranges = 0
  end

  def height
    puts "#{@name} is #{@height} feet tall."
  end

  def passage_of_time
    while @age < 50
      @num_of_oranges = 0
      @age += 1
      puts "#{@name} is #{@age} years old."
      @height += rand(3)
      puts "#{@name} is #{@height} feet tall."
      if @age <= 5
        puts "#{@name} hasn't produce any oranges yet"
      else
        @num_of_oranges += rand(30)
        puts "#{@name} has produced #{@num_of_oranges} oranges"
      end
      sleep 0.2
    end
  end
end

mikan = OrangeTree.new("MIKAN")
mikan.height
mikan.passage_of_time
