class Employee
  attr_reader :salary, :title, :name, :employees, :boss
  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary 
    @boss = boss
  end

  def bonus(multiplier)
    bonus = salary * multiplier
  end
end