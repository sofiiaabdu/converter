require_relative 'person'

class BodyMassIndex
  attr_reader :person, :unit

  def initialize(person, unit)
    @person = person
    @unit = unit
  end

  def calculator
    if unit === 1
      (person.weight / (person.height * person.height)).round(2)
    else
    ((person.weight / (person.height ** 2)) * 703).round(2)
    end
  end

  def result
    puts 'very severely underweight' if calculator < 15
    puts 'severely underweight' if calculator.between?(15, 16)
    puts 'underweight' if calculator.between?(16, 18.5)
    puts 'normal' if calculator.between?(18.5, 25)
    puts 'overweight' if calculator > 25
  end

 end