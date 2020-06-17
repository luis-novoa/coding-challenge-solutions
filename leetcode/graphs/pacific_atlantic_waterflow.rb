class Spot
  attr_accessor :up, :down, :right, :left
  def initialize(value, i1, i2)
      @value = value
      @coordinate = [i1, i2]
  end
end

def turn_into_spots(matrix)
  matrix.each_with_index do |e1, i1|
      e1.each_with_index do |e2, i2|
          matrix[i1][i2] = Spot.new(e2, i1, i2)
      end
  end
  matrix
end

def check_neighbors(matrix)
  matrix.each_with_index do |e1, i1|
      e1.each_with_index do |e2, i2|
          up = matrix[i1 - 1][i2]
          down = matrix[i1 + 1][i2]
          left = matrix[i1][i2 - 1]
          right = matrix[i1][i]
          e2.up = 
      end
  end
end

def pacific_atlantic(matrix)
  matrix = turn_into_spots(matrix)
  matrix
end