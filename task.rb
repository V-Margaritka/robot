require_relative "robot"

puts "Welcome to Robot game\n\n"

#ввод length
print "Enter table's length: "
input = gets
length = input.strip.to_i
puts "table lengths #{length}"

#ввод width
print "Enter table's width: "
input = gets
width = input.strip.to_i
puts "table width #{width}"

#ввод x
print "Enter value x: "
input = gets
x = input.strip.to_i
puts "value x #{x}"

#ввод y
print "Enter value y: "
input = gets
y = input.strip.to_i
puts "value y #{y}"

#выбор направления
print "Еnter direction (up, down, right, left): "
input = gets
n = input.strip
puts "direction #{n}"

#создание экземпляров класса
t = Table.new(length, width)
robot = Robot.new(x, y, t, n)

#начало цикла
loop do
  #введите команду
  print "Enter the command (step, exit, report, rotate): "
  input = gets
  command = input.strip
  puts "commanda #{command} completed"

  #команда выход из игры
  if command == "exit"
    break
  end

  #команда вывода координат робота
  if command == "report"
    robot.report
  end

  #команда на шаг робота
  if command == "step"
    robot.step
  end

  #команда поворот робота
  if command == "rotate"
    robot.rotate
  end
end
