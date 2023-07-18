require_relative "./Employee.rb"

class Manager < Employee
  attr_reader :employees
  def initialize
    @employees = []

  end 

  def bonus(multiplier)
    employees.each do |employee|
      
    end
  end

end