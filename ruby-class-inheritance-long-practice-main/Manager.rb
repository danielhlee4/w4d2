require_relative "./Employee.rb"

class Manager < Employee
  attr_accessor :employees, :salary
  def initialize(name, title, salary, boss)
    @employees = []
    super
  end 

  def bonus(multiplier)
    bonus = 0
    queue = @employees.dup 
    until queue.empty?
      worker = queue.shift
      bonus += worker.salary 
      if worker.is_a?(Manager)
        queue << worker.employees
      end
    end
    bonus * multiplier
  end

end


ned = Manager.new("ned", "Founder", 1000000, boss = nil)
darren = Manager.new("darren","TA Manager", 78000, ned)
ned.employees.push(darren)
shawna = Employee.new("shawna", "TA", 12000, darren)
david = Employee.new("david", "TA", 10000, darren)
darren.employees.push(shawna, david)
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000