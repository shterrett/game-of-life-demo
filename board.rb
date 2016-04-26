class Board
  include Enumerable
  CELL = Struct.new(:value, :row, :column)

  def initialize(two_d_array)
    @board = two_d_array
  end

  def each
    @board.each_with_index do |row, ri|
      row.each_with_index do |cell, ci|
        yield CELL.new(cell, ri, ci)
      end
    end
  end

  def each_row
    @board.each do |row|
      yield row
    end
  end

  def get(col, row)
    @board[row][col]
  end

  def set(col, row, val)
    @board[row][col] = val
  end
end
