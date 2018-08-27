require_relative 'person'
require_relative 'body_mass_index'

puts 'Please, enter your height (meters or inches): '
height = gets.chomp.to_f

puts 'Please, enter your weight (kg or lb): '
weight = gets.chomp.to_f

person1 = Person.new(height, weight)

index1 = BodyMassIndex.new(person1, 2)

puts 'Your result is: ', index1.calculator
puts index1.result