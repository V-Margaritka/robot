class Person
  def initialize(name, height, weight)
    @name, @height, @weight = name, height, weight
  end

  def hello
    puts "Привет #{@name}, твой вес #{@weight}, а рост #{@height}"
  end
end
