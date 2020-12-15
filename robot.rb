class Table
  def initialize(length, width)
    @length = length     #записываем значение @length
    @width =  width
  end

  def length
    @length     #Читаем значение из @length.
  end

  def width
    @width     #Читаем значение из @width.
  end
end

class Robot
  MOVES = {
    "up" => [0, 1],
    "down" => [0, -1],
    "left" => [-1, 0],
    "right" => [1, 0]
  }

  DIRECTION = {
    "up" => 0,
    "right" => 1,
    "down" => 2,
    "left" => 3
  }

  REPORT = {
    0 => "up",
    1 => "right",
    2 => "down",
    3 => "left"
  }

  def initialize(x, y, t, n)
    @x = x     #записываем значение атрибутов @x, @y
    @y = y
    @table = t
    @n = DIRECTION[n]
  end

  def report
    puts "#{@x} ; #{@y} ; #{REPORT[@n]}"
  end

  #условия метода-шаг
  def step
    direction = REPORT[@n]

    if can_move?
      @x = @x + MOVES[direction][0]
      @y = @y + MOVES[direction][1]
    else
      puts "No move"
    end
  end

  def can_move?
    direction = REPORT[@n]
    can_move_x = @x + MOVES[direction][0] <= @table.width
    can_move_y = @y + MOVES[direction][1] <= @table.length

    can_move_x && can_move_y
  end

  #условия метода-поворот робота
  def rotate
    @n = (@n + 1) % 4
  end

  
end
