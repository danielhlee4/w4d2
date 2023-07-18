require_relative "./Employee.rb"

class Manager < Employee
  attr_reader :employees
  def initialize(name, title, salary)
    @employees = []
    super
  end 

  def bonus(multiplier)
    bonus = 0
    employees.each do |employee|
      # if employee.employees.length > 0
      #   bonus += 
      # else
      bonus += employee.salary
    end
    bonus * multiplier
  end

end