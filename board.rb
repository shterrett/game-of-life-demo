class Board
  include Enumerable

  def initialize(two_d_array)
    @board = two_d_array
  end

  def each
    @board.flatten.each do |cell|
      yield cell
    end
  end

  def get(col, row)
    @board[row][col]
  end

  def set(col, row, val)
    @board[row][col] = val
  end
end
