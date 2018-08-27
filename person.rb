class Person
  attr_reader :height, :weight

  def initialize(height, weight)
    @height, @weight = height, weight
  end

  def to_s
    puts "Person's height is #{@height} and weight is #{@weight}"
  end
end