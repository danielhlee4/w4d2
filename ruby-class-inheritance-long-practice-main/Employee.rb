class Employee
  attr_reader :salary, :title, :name, :employees
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary 
    @boss = nil
  end

  def bonus(multiplier)
    bonus = salary * multiplier
  end
end